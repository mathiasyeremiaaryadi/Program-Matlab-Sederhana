clear
clc

disp('NILAI X = [-1, 0, 1, 2]')
f = @(x) -x^2 - 7;
g = @(x) 2*(x^2) - 2*x + 5;
h = @(x) 7*x - 7;
i = @(x) -x^3 - x - 7;
j = @(x) x^2/5 + 5*x - 1/5;
disp('a. f(x) = -x^2 - 7')
for x = [-1, 0, 1, 2]
    d = ['nilai f (',num2str(x),')'];
    disp(d)
    f(x)
end
disp('=====================')
disp('b. g(x) = 2*x^2 - 2*x + 5')
for x = [-1, 0, 1, 2]
    d2 = ['nilai g(',num2str(x),')'];
    disp(d2)
    g(x)
end
disp('=====================')
disp('c. h(x) = 7*x - 7')
for x = [-1, 0, 1, 2]
    d2 = ['nilai h(',num2str(x),')'];
    disp(d2)
    h(x)
end
disp('=====================')
disp('d. i(x) = -x^3 - x - 7')
for x = [-1, 0, 1, 2]
    d2 = ['nilai i(',num2str(x),')'];
    disp(d2)
    i(x)
end
disp('=====================')
disp('e. j(x) = x^2/5 + 5*x - 1/5')
for x = [-1, 0, 1, 2]
    d2 = ['nilai j(',num2str(x),')'];
    disp(d2)
    j(x)
end
disp('=====================')
