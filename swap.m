function An = swap(A, ub, lb, i, z)
    n = size(A, 2);
    m = size(A, 1);
    
    if i > z             % i harus lebih kecil dari z
        temp = i;
        i = z;
        z = temp;
    else
    end
    
    for col=1:n
        try
            temp = A(i-col+ub+1, col);
            A(i-col+ub+1, col) = A(z-col+ub+1, col);
            A(z-col+ub+1, col) = temp;
        catch                       %Jika indexOutOfBound
            if ((z-col+ub+1 > m) && (i-col+ub+1 <= m) && (i-col+ub+1 >= 1))     %case pada z
                A(i-col+ub+1, col) = 0;
            elseif ((i-col+ub+1 < 1) && (z-col+ub+1 >= 1) && (z-col+ub+1 <= m))	%case pada i
                A(z-col+ub+1, col) = 0;
            else
                %//do nothing
            end
        end
    end
    
    An = A;
    
%ard#
