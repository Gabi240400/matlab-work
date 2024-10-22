# Interval de incredere pentru medie cand dispersia este cunoscuta

clc;
clear all;

X = [22.7 22.8 22.8 22.8 22.9 22.9 22.9 22.9 22.9 22.9 22.9 23.0 23.0 23.0 23.0 23.1 23.1 23.1 23.1 23.1 23.1 23.2 23.2 23.2 23.2 23.2 23.2 23.2 23.3 23.3 23.3 23.3 23.3 23.4 23.4];
alfa = 0.05;
sigma = sqrt(0.35);
n = 35;

m = mean(X);
q = quantile(X, 1 - alfa/2);
m1 = m - q*sigma*0.05/sqrt(n);
m2 = m + q*sigma*0.05/sqrt(n);

display(m1);
display(m2);