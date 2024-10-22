# Interval de incredere pentru dispersia legii normale

clc;
clear all;

X = [4.21 4.03 3.99 4.05 3.89 3.98 4.01 3.92 4.23 3.85 4.20];
n = 11;
alfa = 0.05;

q1 = chi2inv(1 - alfa/2, n - 1);
q2 = chi2inv(alfa/2, n - 1);
s = std(X);

d1 = (n - 1)*s^2/q1;
d2 = (n - 1)*s^2/q2;

printf("Pentru sigma^2: (%.3f, %.3f)\n", d1, d2);
printf("Pentru sigma: (%.3f, %.3f)\n", sqrt(d1), sqrt(d2));

