function b = upperAbove(A, b) 
n = size(A,1);
for i = n:-1:1
    j = i;
    if (i == j)
        jUpdate = j;
        while ((jUpdate+1) <= n)
            b(i) = b(i) - A(i,jUpdate+1)*b(jUpdate+1);
            jUpdate = jUpdate + 1;
        end
        b(i) = b(i)/A(i,i);
    end
end