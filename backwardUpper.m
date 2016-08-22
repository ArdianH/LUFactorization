function x = backwardUpper(A, ub, lb, y)
    n = size(A, 2);
    m = size(A, 1);
    
    b = y;
    for j = n:-1:1
        i = ub+1;
        jj = j+1;
        ii = i-1;
        while (ii >= 1 && jj <= n)
            b(j) = b(j) - A(ii,jj)*b(jj);
            jj = jj+1;
            ii = ii-1;
        end
        if((A(i,j) - 0) < eps(1))
            b(j) = 0.0;
        else
            b(j) = b(j)/A(i,j);
        end
    end
    
    x = b;
    
    
%ard#