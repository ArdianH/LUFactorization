%Ardian - 1206208031
%sumber: Buku Komputasi Numerik, setelah dilakukan beberapa modifikasi code.

%Fungsi solve menerima 2 buah input yakni matrix A dan vector b, dan
%menghasilkan 1 buah output yakni vector x yang merupakan solusi dari Ax=b.

function x=solve(A, b)
	tic
	[n,n] = size(A);
	p = 1:n;

	xSol = A\b;

	for k=1:n-1
		%cari nilai elemen terbesar pada kolom k (kolom yang sedang aktif).
		[c,m] = max(abs(A(k:n,k)));
		if c==0
			error('Matrix Singular');
		end
		m = m + k -1;
		tmpA = A(k,:);
		A(k,:) = A(m,:);
		A(m,:) = tmpA;
		tmpp = p(k);
		p(k)   = p(m);
		p(m)   = tmpp;

		for i=k+1:n
			A(i,k) = A(i,k)/A(k,k);
			for j=k+1:n
				A(i,j) = A(i,j) - A(i,k)*A(k,j);
			end
		end
	end
	pivot = p
	Hasil = A

	for i=1:n
		c(i,:) = b(p(i),:);
	end    
	b = c;

	%Forward Lower
	y = lowerUnder(A, b);

	%Backward Upper
	x = upperAbove(A, y);
	
	toc

	%norm2 error (err)
	sum = 0;
	for i=1:n
		sum = (x(i)-xSol(i))^2 + sum;
	end

	err = sqrt(sum);
	err
