# Testul Z privind media teoretica

clear all;

X = [3.5 3.3 3.6 3.2 3.4 3.1 3.5 3.7 3.3];
sigma = 0.18;
alfa = 0.04;
m = 3.6;
n = 9;

zalpha = norminv(alfa, 0, 1);
[h, P, ci, zval] = ztest(X, m, sigma, "alpha", alfa, "tail", "left");

printf ("Valoarea statisticii z0: %d\n",zval);
printf ("Regiunea de respingere U:");
printf ( "(-Inf, %d]\n", zalpha);

if h==1
    printf ("Ipoteza H0 este respinsa\n")
endif
if h==0
    printf ("Ipoteza H0 este acceptata\n")
endif