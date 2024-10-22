#Exercitiul 1
a = [1, 2; 3, 4; 5, 6];
aux = a(1, :);
a(1, :) = a(3, :);
a(3, :) = aux;
a

#Exercitiul 2
a = [1, 2, 3; 4, 5, 6];
aux = a(:, 2);
a(:, 2) = a(:, 3);
a(:, 3) = aux;
a

#Exercitiul 3
v = [1 2 3 5 7 11 13];
v(3:6)

#Exercitiul 4
a = [1 2 3; 4 5 6; 7 8 9];
a(2: 3, 1: 2)

#Exercitiul 5
zeros(4)
ones(2)
eye(5)

#Exercitiul 6
u = [1 2 3];
v = [4 5 6];
u == v
u != v
u < v
u > v
u <= v
u >= v

#Exercitiul 7
[2*u, -3*v]

#Exercitiul 8
A=[7, 8, 9; 1, 2, 3; 1, 1, 1];
B=[1, 2, 2];
A/B

#Exercitiul 9
A = [1 1 1; 2 2 2; 3 3 3];
B = [1 1 1; 1 1 1; 1 1 1];
calculeMatrice(A, B)

#Exercitiul 10
A = [1 1 1; 2 2 2; 3 3 3];
B = [1 1 1; 1 1 1; 1 1 1];
calculeMatrice2(A, B)

#Exercitiul 11
format short
a = 4/3

format long
a = 4/3

#Exercitiul 12
a=1;b=2;c=3;
fprintf('a = %d , b = %d , c = %d \n', a, b, c);
fprintf('a=%d b=%d ', a, b); fprintf('a+b=%d \n ', a+b);

a = 3.7; b = 4;
fprintf('a=%2.3f , b=%8d \n', a, b);
fprintf('Suma este = %2.5f \n', a+b);

x = 0:0.2:1;
disp(x)
fprintf('%2.3f ',x); fprintf('\n');
fprintf('%2.3f \n',x);

a=[x; 5*x];
disp(a)
fprintf('%4.2f %10.6f\n',a);

#Exercitiul 13
help for
help if
help while