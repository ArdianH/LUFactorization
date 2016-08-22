function [An,p] = bandedFactorizationLU(A, ub, lb)

[m,n] = size(A);
p = 1:n;

for k=1:n-1
    [c,rind] = max(abs(A(ub+1:m, k)));  %cari elemen terbesar pada kolom k.
    if((A(rind+ub,k)) > (A(ub+1,k)))    %pertukaran dilakukan pada baris.
        swap1 = (rind) + (k-ub);        %rind = selisih antara diagonal utama dengan elemen terbesar pada col yg sama.
        swap2 = 1 + (k-ub);
        flagSwap = 1;
    else
        flagSwap = 0;
    end

    if c==0
        error('Matrix Singular');
    end
    
    %lakukan pertukaran baris pada matrix A dan catat pertukaran baris
    %tersebut pada vektor p.
    if (flagSwap == 1)
        A = swap(A, ub, lb, swap1, swap2);
        tmpp     = p(swap2);
        p(swap2) = p(swap1);
        p(swap1)= tmpp;
    else
    end
    for x=(ub+1+1):m                    %start dari elemen di bawah diagonal utama.
        A(x,k) = A(x,k)/A(ub+1,k);      %diagonal utama pada baris ub+1.
        
        j=k+1;
        i=ub+1;
        while((j <= k+ub) && (i >= 1))
            try
                A(i,j) = A(i,j) - A(x,k)*A(i-1,j);    %kali dengan satu elemen diatasnya.   
            catch
                break
            end
            j = j+1;
            i = i-1;
        end
    end
end

An = A
P = p


%ard#