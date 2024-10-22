# Testul T privind media teoretica

clear all;

X = [2.51 2.52 2.52 2.53 2.53 2.53 2.53 2.54 2.54 2.54 2.54 2.54 2.55 2.55 2.55 2.55 2.55 2.55 2.55 2.58 2.58 2.59];
n = 35;
m = 2.55;
alfa = 0.05;

t1_alpha=tinv(1-alfa, n-1);

[h, P, ci, stats] = ttest(X, m, "alpha", alfa, "tail", "right");

printf ("Valoarea statisticii t0: %d\n",stats.tstat);
printf ("Regiunea de respingere U:");
printf ( "[%d, +Inf)\n", t1_alpha);

if h==1
    printf ("Ipoteza H0 este respinsa\n")
endif
if h==0
    printf ("Ipoteza H0 este acceptata\n")
endif