clear 
clc

A = [5 7 0; 0 2 9; 5 0 0];
B = [6 6 0; 1 3 5; -1 0 0];
disp("A = ")
disp(A)
disp("B = ")
disp(B)
nomor1 = and(A, B);
nomor2 = or(A, B);
nomor3 = not(A);
nomor4 = not(B);
nomor5 = or(1, 1);
nomor6 = and(1 , 1);
nomor7 = not(1);
nomor8 = not(0);
nomor9 = or(1, 0);
nomor10 = and(1, 0);
disp("(1) A + B = ")
disp(nomor1)
disp("(2) A . B = ")
disp(nomor2)
disp("(3) A' = ")
disp(nomor3)
disp("(4) B' = ")
disp(nomor4)
fprintf("(5) 1 + 1 = %1d",nomor5)
disp(" ")
disp(" ")
fprintf("(6) 1 . 1 = %1d",nomor6)
disp(" ")
disp(" ")
fprintf("(7) 1' = %1d",nomor7)
disp(" ")
disp(" ")
fprintf("(8) 0' = %1d",nomor8)
disp(" ")
disp(" ")
fprintf("(9) 1 + 0 = %1d",nomor9)
disp(" ")
disp(" ")
fprintf("(10) 0 . 1 = %1d",nomor10)
disp(" ")
disp(" ")