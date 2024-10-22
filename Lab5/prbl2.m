# Interval de incredere pentru medie cand dispersia este necunoscuta

clc;
clear all;

X = [2.7 2.8 2.8 2.9 2.9 2.9 2.9 2.9 3.0 3.0 3.0 3.1 3.1 3.1 3.1 3.1 3.2 3.2 3.2 3.2 3.3 3.3];
n = 22;
alfa = 0.02;

m = mean(X);
s = 0;
for i = 1:n
  s = s + (X(i) - m)^2;
endfor
s = sqrt(s/(n-1));

q = tinv(1 - alfa/2, n - 1);
m1 = m - q*s/sqrt(n);
m2 = m + q*s/sqrt(n);

display(m1);
display(m2);