clear
clc

%nomor 1
A = [5, 6, 7, 8, 9];
B = [9, 8, 7, 6, 5];
C = [5, 6, 9];
fprintf('A = { %-2d%-2d%-2d%-2d%-2d}',A);
disp(' ')
fprintf('B = { %-2d%-2d%-2d%-2d%-2d}',B);
disp(' ')
fprintf('C = { %-2d%-2d%-2d}',C);
disp(' ')
disp('nomor 1')
disp('-------------------------')
disp('nomor a')
disp('Apakah A = B ?')
x = isequal(sort(A), sort(B));
if x == 1
    disp('A sama dengan B')
else
    disp('A tidak sama dengan B')
end
disp('-------------------------')
disp('nomor b')
disp('Apakah C subset B ?')
if ismember(C,B)
    disp('C subset B, terbukti')
else
    disp('C bukan subset B')
end
disp('-------------------------')
disp('nomor c')
disp('Apakah C proper subset A ?')
if ismember(C,A)
   if length(C) < length(A)
       disp('C proper subset A, terbukti')
   else
       disp('C bukan proper subset A')
   end
else
    disp('C bukan proper subset A')
end
disp('-------------------------')
disp('nomor d')
disp('Apakah B proper subset A ?')
if ismember(B,A)
   if length(B) < length(A)
       disp('B proper subset A, terbukti')
   else
       disp('B bukan proper subset A')
   end
else
    disp('B bukan proper subset A')
end
disp('-------------------------')
disp('nomor e')
disp('Apakah B subset A ?')
if ismember(B,A)
    disp('B subset A, terbukti')
else
    disp('B bukan subset A')
end
%nomor 2
disp('-------------------------')
disp('nomor 2')
U = [1:10];
fprintf('U = { %-3d%-3d%-3d%-3d%-3d%-3d%-3d%-3d%-3d%-3d}',U);
disp(' ')
disp('-------------------------')
disp('nomor a')
disp('komplemen A ?')
k1 = setdiff(U,A);
disp(['Komplemen A = {',num2str(k1),'}'])
disp('-------------------------')
disp('nomor b')
disp('Komplemen(A irisan C) ?')
k2 = setdiff(U,intersect(A,C));
disp(['Komplemen(A irisan C) = {',num2str(k2),'}'])
disp('-------------------------')
disp('nomor c')
disp('Komplemen C gabungan B')
g1 = union(setdiff(U,C),B);
disp(['Komplemen C gabungan B = {',num2str(g1),'}'])
disp('-------------------------')
disp('nomor d')
disp('Pengurangan simetrik A dan C')
p1 = setxor(A,C);
disp(['Pengurangan simetrik A dan  = {',num2str(p1),'}'])
disp('-------------------------')
disp('nomor e')
disp('Pengurangan simetrik komplemen B dan C')
p2 = setxor(setdiff(U,B),C);
disp(['Pengurangan simetrik komplemen B dan C = {',num2str(p2),'}'])
%nomor 3
disp('-------------------------')
disp('')
disp('nomor 3')
f = @(x) x^2 + 2;
g = @(x) 5/4*x^3 - 1;
h = @(x) x^5 - 5;
disp('f(x) = x^2 + 2')
disp('g(x) = 5/4*x^3 - 1')
disp('h(x) = x^5 - 5')
disp('-------------------------')
disp('nomor a')
fprintf('(f o g o h)(-1) = %-2d',f(g(h(-1))))
disp(' ')
disp('-------------------------')
disp('nomor b')
fprintf('(g o f o h)(5) = %-2d',g(f(h(5))))
disp(' ')
disp('-------------------------')
disp('nomor c')
fprintf('(h o g o f)(100) = %-2d',h(g(f(100))))
disp(' ')
%nomor 4
disp('-------------------------')
disp('')
disp('nomor 4')
x2 = [1, 3, 5, 7];
f2 = @(x) x^2;
fprintf('x = { %-2d%-2d%-2d%-2d}',x2);
disp(' ')
disp('f(x) = x^2')
for x2 = [1, 3, 5, 7]
    fprintf('f(%-1d) = %-2d',x2,f2(x2))
    disp(' ')
end
fprintf('Jadi, f(x) = {')
for x2 = [1, 3, 5, 7]
    fprintf('%-3d',f2(x2))
end
fprintf('}')
disp(' ')