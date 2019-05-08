clear
clc
close all

%nomor 4a
s44 = {'a' 'b' 'd' 'c' 'b' 'e' 'a' 'e'};
t44 = {'b' 'd' 'c' 'a' 'e' 'c' 'e' 'd'};
weights44 = [1 3 1 4 3 3 2 2];
G7 = graph(s44, t44, weights44);

p4= plot(G7,'EdgeLabel',G7.Edges.Weight);
title('Nomor 4.a', 'Color', 'green')

[T,pred] = minspantree(G7);
highlight(p4, T)

%nomor 4b
fprintf('Nomor 4.b')
disp(' ')
Banyak_MinSPantree = 1 + 2 + 2 + 2;
fprintf('Banyak Minimum Spanning tree : %2d',Banyak_MinSPantree)
disp(' ')

%nomor 5
disp(' ')
fprintf('Nomor 5')
disp(' ')
fprintf('a = 1 (BENAR)')
a = 1;
disp(' ')
fprintf('b = 0 (SALAH)')
b = 0;
disp(' ')
fprintf('c = 0 (SALAH)')
c = 0;
disp(' ')
fprintf('Nomor 5.a')
disp(' ')
fprintf('E1 = ( ~a + b ) * c')
disp(' ')
Jawaban_5a = ( ~a + b ) * c;
if Jawaban_5a == 0
    fprintf('Jawaban 5.a = SALAH')
else
    fprintf('Jawaban 5.a = BENAR')
end
disp(' ')
fprintf('Nomor 5.b')
disp(' ')
fprintf('E5 = ( a * ( b + ( ~c ) ) ) + ( a * b )')
disp(' ')
Jawaban_5b = ( a * ( b + ( ~c ) ) ) + ( a * b );
if Jawaban_5b == 0
    fprintf('Jawaban 5.b = SALAH')
else
    fprintf('Jawaban 5.b = BENAR')
end
disp(' ')