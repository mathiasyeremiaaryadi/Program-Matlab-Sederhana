clear
clc

x = [1, 3, 5, 7];
fprintf('x = { %-2d%-2d%-2d%-2d}',x);
disp(' ')
f = @(x) x^2;
disp('f(x) = x^2')

for x = [1, 3, 5, 7]
    fprintf('f(%-1d) = %-1d',x,f(x))  
    disp(' ')
end

fprintf('f(x) = { ')
for x = [1, 3, 5, 7]
    fprintf('%-3d',f(x))
end
fprintf('}')
disp(' ')

