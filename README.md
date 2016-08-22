# LUFactorization
LU Factorization matrix and LU Factorization for Banded Matrix. Numerical Analysis using Matlab.

© Ardian Hosen, Arvin Samuar, M.Fachrul, Wildan Anky.


LU Factorization with partial pivoting
LU Factorization with partial pivoting Banded Storage

File-file program yang digunakan:
1. generateBanded.m
2. program1_B12.m
3. program2_B12.m
4. transform.m
5. swap.m
6. bandedFactorizationLU.m
7. forwardLower.m
8. backwardUpper.m
9. errorCount.m
10. LU_normal.m
11. lowerUnder.m
12. upperAbove

LU Factorization with partial pivoting menggunakan file nomor 10-12.
LU Factorization with partial pivoting Banded Storage menggunakan file nomor 1-9.

File-file data yang digunakan:
1. dataTugas1_input_5x5.mat
2. dataTugas1_input_10x10.mat
3. dataTugas1_input_50x50.mat
4. dataTugas1_input_100x100.mat
5. dataTugas1_input_500x500.mat
6. dataTugas1_input_1000x1000.mat


Langkah-langkah/command untuk menjalankan program:

1. Load data matrix dan vektor yang dibutuhkan pada file-file data terlampir, 
atau 
Lakukan generate matrix A dan vektor b (contoh dimensi 500, p=3, q=1) menggunakan program generateBanded.m dengan command:
>> [A,b] = generateBanded(500, 1, 3);

2. Lakukan faktorisasi LU menggunakan program LU_normal pada LU_normal.m dengan menjalankan command:
>> x = LU_normal[A, b]


Langkah-langkah/command untuk menjalankan program banded matrix:

1. Load data matrix dan vektor yang dibutuhkan pada file-file data terlampir, 
atau 
Lakukan generate matrix A dan vektor b (contoh dimensi 500, p=3, q=1) menggunakan program generateBanded.m dengan command:
>> [A,b] = generateBanded(500, 1, 3);

2. Lakukan faktorisasi LU banded matrix menggunakan program1_B12 dengan menjalankan command:
>> [An, p, U, L] = program1_B12(A)

3. Lakukan pencarian solusi vektor x untuk sistem persamaan Ax = b, menggunakan program2_B12 dengan menjalankan command:
>> x = program2_B12(An, b, p, U, L)

4. Lakukan perhitungan error yang terjadi antara nilai x yang digenerate dengan nilai x yang dihasilkan dari perhitungan fungsi lu dari matlab, dengan menjalankan command:
>> errorCount(x, A, b)
