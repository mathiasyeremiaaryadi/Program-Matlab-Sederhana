clear
clc
close all

%plot9(Graph, 'EdgeLabel', s1)
%plot9(Graph, 'EdgeLabel', t)
%plot9(Graph, 'EdgeLabel', Graph.Edges.Weight)

%nomor 1.a
s1 = [1 1 2 5 3 6 4 6 5 ]; 
t1 = [2 3 5 3 6 4 1 2 6];
weight1=[30 10 20 10 30 50 10 70 10];
names = {'A' 'B' 'C' 'D' 'E' 'F'};
%graph(x, y, bobot, nama node)
G1 = graph(s1, t1, weight1, names);

subplot(4,2,1)
p1a = plot(G1,'EdgeLabel', G1.Edges.Weight);
title('Nomor 1.a', 'Color', 'red')

%nomor 1.b
%graph(matriks)
W = [1 2 0 1; 2 0 3 0; 0 3 1 1 ; 1 0 1 0];
G2 = graph(W);

degree_1b = degree(G2)
adj_1b = adjacency(G2)

subplot(4,2,2)
p1b= plot(G2,'EdgeLabel',G2.Edges.Weight);
title('Nomor 1.b', 'Color', 'red')

%nomor 2.a
s3 = [1 1 2 5 3 6 4 6 5];
t3 = [2 3 5 3 6 4 1 2 6];
weight3 = [30 10 20 10 30 50 10 70 10];
names3 = {'A' 'B' 'C' 'D' 'E' 'F'};
G3 = graph(s3,t3,weight3,names3);

subplot(4,2,3)
p2a= plot(G3,'EdgeLabel', G3.Edges.Weight);
title('Nomor 2.a', 'Color', 'blue')

%nomor 2.b
W4 = [0 2 3 0; 1 2 2 1 ; 2 1 1 0; 1 0 0 2];
G4 = digraph(W4);

subplot(4,2,4)
p2b= plot(G4, 'EdgeLabel', G4.Edges.Weight);
title('Nomor 2.b', 'Color', 'blue')

%nomor 3.a

x1 = {'San Fransisco' 'San Fransisco' 'Denver' 'Denver' 'Chicago' 'Chicago' 'Washington' 'Detroit' 'Washington'};
x2 = {'Los Angeles' 'Denver' 'Los Angeles' 'Chicago' 'Detroit' 'New York' 'Chicago' 'New York' 'New York'};

G5 = graph(x1, x2);

degree_3a = degree(G5)
adj_3a = adjacency(G5)
I_3a = incidence(G5)

subplot(4,2,5)
p3= plot(G5);
title('Nomor 3.a', 'Color', 'magenta')

%nomor 3.b

s6 = {'a', 'b', 'b', 'c', 'c', 'c', 'd'};
t6 = {'b', 'b', 'c', 'c', 'b', 'd', 'a'};
Graph6 = digraph(s6, t6, 'omitselfloops');
subplot(4, 2, 6);
plot(Graph6);
title('Nomor 3b', 'Color', 'magenta')
%adjacency, incidence
adjacency3b = adjacency(Graph6)
incidence3b = incidence(Graph6)

%nomor 4a
s44 = {'a' 'b' 'd' 'c' 'b' 'e' 'a' 'e'};
t44 = {'b' 'd' 'c' 'a' 'e' 'c' 'e' 'd'};
weights44 = [1 3 1 4 3 3 2 2];
G7 = graph(s44, t44, weights44);
subplot(4, 2, 7)
p4= plot(G7,'EdgeLabel',G7.Edges.Weight);
title('Nomor 4.a', 'Color', 'green')

[T,pred] = minspantree(G7);
highlight(p4, T)

%nomor 4b
fprintf('Nomor 4.b')
disp(' ')
Banyak_MinSPantree = 1 + 2 + 2 + 2;
fprintf('Total bobot Minimum Spanning tree : %2d',Banyak_MinSPantree)
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
