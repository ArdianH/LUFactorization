function b = lowerUnder(A, b) 
n = size(A,1);
for i = 1:n
    j = i;
    if (i == j)
        jUpdate = j;
        while ((jUpdate-1) >= 1)
            b(i) = b(i) - A(i,jUpdate-1)*b(jUpdate-1);
            jUpdate = jUpdate - 1;
        end
    end
end