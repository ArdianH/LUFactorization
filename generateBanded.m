function [A, b] = generateBanded(n, ub, lb)

    %A = zeros((ub+lb), n);
    %temp = [];
    A = zeros(n);
    dim = n;
    
    for ii=1:lb
        dim = dim-1;
        A   = A + diag(rand(1,dim), -ii);
        %temp = [temp;rand(1,dim)];
        %ii = ii+1;
    end
    
    dim = n;
    A = A + diag(rand(1,dim));
    
    for jj=1:ub
        dim = dim-1;
        A   = A + diag(rand(1,dim), jj);
    end

    b = rand(n, 1);
    b
    A