clear
clc

A = [1, 2, 3];
B = [3, 2, 1];
C = [3, 2];
U = [1, 2, 3, 4, 5];
fprintf('A = { %-2d%-2d%-2d}',A)
disp(' ')
fprintf('B = { %-2d%-2d%-2d}',B)
disp(' ')
fprintf('C = { %-2d%-2d}',C)
disp(' ')
fprintf('U = { %-2d%-2d%-2d%-2d%-2d}',U)
disp(' ')
%MEMBUKTIKAN A = B
disp('nomor 1')
sama = isequal(sort(A),sort(B));
fprintf('A = B ?')
disp(' ')
if sama
    fprintf('A = B terbukti benar')
else
    fprintf('A tidak sama dengan B')
end
disp(' ')
%MEMBUKTIKAN BANYAK SUBSET 2^|A|
disp('nomor 2')
disp('Banyaknya subset himpunan A ?')
n = length(A);
S = 2^n;
fprintf('Banyaknya subset himpunan A = %-2d',S)
%MEMBUKTIKAN KOMPLEMEN
disp(' ')
disp('nomor 3')
disp('Komplemen A ?')
K = setdiff(U,A);
fprintf('Komplemen A = { %-2d%-2d}',K)
%MEMBUKTIKAN PENGURANGAN SIMETRIS
disp(' ')
disp('nomor 4')
disp('Pengurangan simetris A dan C ?')
simetris = setxor(A,C);
fprintf('Pengurangan simetris A dan C = { %-2d}',simetris)
disp(' ')





    