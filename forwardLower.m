function y = forwardLower(A, ub, lb, p, b)
    n = size(A, 2);
    m = size(A, 1);
    
    %Lakukan pertukaran baris pada vektor b sesuai dengan urutan pertukaran baris matrix A 
    %yang tersimpan pada vektor p.
    c = zeros(n,1);
    for i=1:n
        c(i,:) = b(p(i),:);
    end
    b = c;
    
    
    for j = 1:n
        i = ub+1;
        jj = j-1;
        ii = i+1;
        while (jj >= 1 && ii <= m)
            b(j) = b(j) - A(ii,jj)*b(jj);
            jj = jj-1;
            ii = ii+1;
        end
    end
    
    y = b;
    

%ard#