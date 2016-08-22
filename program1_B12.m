function [An,p,U,L] = program1_B12(A)
%Program1
%input: matrix banded A. 
%output: matrix banded An (compact storage), vektor p (permutasi), matrix U(upper), dan matrix L(lower).

    %waktuAwal = cputime;
    tic
    [At, ub, lb] = transform(A);
    [An,p] = bandedFactorizationLU(At, ub, lb);
    
    %waktuAkhir = cputime;
    %waktuEksekusi = waktuAkhir - waktuAwal
    waktuEksekusiFaktorisasi = toc
    
    %block di bwh dapat di-comment, L dan U sdah tersimpan dalam matrix An.
    L = [];
    U = [];
    for i=1:ub+1
        U = [U;An(i,:)];
    end
    
    for i=ub+2:size(An,1)
        L = [L;An(i,:)];
    end
    
    L;
    U;
    %batas comment block
    
%{
    waktuAwalAlgo = cputime;
    [L, U, P] = lu(A);
    waktuAkhirAlgo = cputime;
    waktuEksekusiAlgo = waktuAkhirAlgo - waktuAwalAlgo
%}
    
    
    
  
%{
Sample input
    
Z1 = [2 2 0 0;
      1 1 1 0;
      0 4 4 4;
      0 0 8 8;]
    
Z2 = [5 5 0 0 0;
      3 3 3 0 0;
      2 2 2 2 0;
      0 9 9 9 9;
      0 0 1 1 1;] 

Cara Menggunakan:
1. Definisikan terlebih dahulu matrix input Z1 (copy Z1 dan paste pada command window).
2. Jalankan pada command window.. 
   >> [An,p,U,L] = program1_B12(Z1)
    
ardian#
%}