function x = program2_B12(An, b, p, U, L)

%Program2
%input: matrix banded An (compact storage), vektor b, vektor p (permutasi). 
%output: vektor x (solusi).

    ub = size(U,1)-1;
    lb = size(L,1);
    
    tic
    % Ly = Pb
    y = forwardLower(An, ub, lb, p, b);

    % Ux = y
    x = backwardUpper(An, ub, lb, y);

    waktuEksekusiSolve = toc


%{
Cara Menggunakan:
1. Jalankan terlebih dahulu file program1_B12.m, beserta komponen yang diperlukan (lihat file program1_B12.m).
2. Definisikan input vektor b (vektor column).
3. Jalankan pada command window..
   >> x = program2_B12(An, b, p, U, L)
    
ardian#
%}