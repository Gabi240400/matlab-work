# Testul X^2 privind dispersia teoretica

clear all;

X = [6.16 6.55 5.32 6.26 6.10 5.61 5.87 6.10 6.83 7.07 5.60 6.91 6.22 5.98 6.21 5.94 5.96 6.45];
n = 18;
sigma = 0.4;
#sigma_patrat = 0.4^2;
alfa = 0.05;

h1=chi2inv(alfa/2, n-1);
h2=chi2inv(1-alfa/2, n-1);

[h, P, ci, stats] = vartest(X, sigma^2, "alpha", alfa, "tail", "both");

printf ("Valoarea statisticii v0: %d\n",stats.chisqstat);
printf ("Regiunea de respingere U:");
printf ( "(-Inf, %d]U[%d, Inf)\n", h1, h2);

if h==1
    printf ("Ipoteza H0 este respinsa\n")
endif
if h==0
    printf ("Ipoteza H0 este acceptata\n")
endif