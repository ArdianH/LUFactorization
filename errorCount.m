function error = errorCount(xGenerated, A, b)

%Program errorCount
%input: vektor x (solusi yang digenerate), matrix banded A, vektor b. 
%output: error (absolute or relative).
    tic
    x = A\b;
    waktuEksekusiAlgo = toc
    %xGenerated
    
    %absolute error (forward error)
    absoluteError = 0.0;
    absoluteErrorVector = [];
    
    for i = 1:size(x)
        absoluteErrorVector = [absoluteErrorVector; abs(x(i)-xGenerated(i))];
        absoluteError = absoluteError + (abs(x(i)-xGenerated(i)));
    end
    
    
    error = absoluteErrorVector;
    %error = absoluteError;
    
    
    
    %relative error (forward error)
    relativeError = 0.0;
    relativeErrorVector = [];
    
    for i = 1:size(x)
        relativeErrorVector = [relativeErrorVector; abs(x(i)-xGenerated(i))/abs(x(i))];
        relativeError = relativeError + (abs(x(i)-xGenerated(i))/abs(x(i)));
    end
    
    
    %error = relativeErrorVector;
    %error = relativeError;
    
    
    
    %norm2 error (must be absoluteErrorVector or relativeErrorVector)
    
    errorVector = absoluteErrorVector;
    %errorVector = relativeErrorVector;
    norm2Error = 0.0;
    for i=1:size(errorVector)
        norm2Error = norm2Error + (errorVector(i)^2);
    end
    
    norm2Error = sqrt(norm2Error);
    
    error = norm2Error
    
%{
Cara Menggunakan:
1. Jalankan terlebih dahulu file program1_B12.m dan file program2_B12.m (lihat pada file).
2. Sesuaikan jenis error yang ingin ditampilkan.
3. Jalankan pada command window..
   >> error = errorCount(An, b, p, U, L)
    
ardian#
%}
    