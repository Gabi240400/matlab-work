# Interval de incredere pentru raportul dispersiilor si diferenta mediilor

clc;
clear all;

X1 = [1010 993 992 1008 1006 998 1008 994 996 1006 1005 1002 997 1004 1002 1010 1003];
X2 = [1002 985 996 1010 1004 1003 1010 993 1002 1006 988 995];

alfa = 0.05;
n1 = columns(X1);
n2 = columns(X2);

# a
q1 = finv(1 - alfa/2, n1 - 1, n2 - 1);
q2 = finv(alfa/2, n1 - 1, n2 - 1);

s1 = std(X1);
s2 = std(X2);

rap1 = s1^2/(q1*s2^2);
rap2 = s1^2/(q2*s2^2);

printf("a) (%.2f, %.2f)\n", rap1, rap2);

# b
mean1 = mean(X1);
mean2 = mean(X2);
sp = sqrt(((n1 - 1)*s1^2 + (n2 - 1)*s2^2)/(n1 + n2 - 2));
q = tinv(1 - alfa/2, n1 + n2 - 2);

m1 = mean1 - mean2 - q*sp*sqrt(1/n1 + 1/n2);
m2 = mean1 - mean2 + q*sp*sqrt(1/n1 + 1/n2);

printf("b) (%.2f, %.2f)\n", m1, m2);

#c
c = (s1^2/n1)/(s1^2/n1 + s2^2/n2);
n = (n1 - 1)*(n2 - 1)/((n2 - 1)*c^2 + (n1 - 1)*(1 - c)^2);
qu = tinv(1 - alfa/2, n);

m3 = mean1 - mean2 - qu*sqrt(s1^2/n1 + s2^2/n2);
m4 = mean1 - mean2 + qu*sqrt(s1^2/n1 + s2^2/n2);

printf("c) (%.2f, %.2f)\n", m3, m4);
