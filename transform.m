function [An, ub, lb] = transform(A)
    n = size(A,2);
    m = size(A,1);
    
    ub = 0;
    lb = 0;
    for col=2:n             %loop count ub (upperband)
        if (A(1,col) == 0)
            break
        else
           ub = ub + 1; 
        end
    end
    for row=2:m             %loop count lb (lowerband)
        if (A(row,1) == 0)
            break
        else
           lb = lb + 1;
        end
    end
    
    
    %An = zeros(ub+lb+1, n);
    %upperband = ub
    %lowerband = lb
    %(i,j) = (i-j+q+1, j)
    bandRows = ub+lb+1;
    
    for row=1:m
        for col=1:n
            try
                An(row-col+ub+1, col) = A(row,col);
            catch
                break
            end
        end
    end
    
    An = An(1:bandRows, :); %return banded matrix hasil transformasi (sesuai dimensi storage bandedMatrix)
    
    