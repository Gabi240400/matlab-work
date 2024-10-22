clear;
clc;

x = [20 20 21 22 22 22 23 23 23 23 23 23 24 24 24 24 24 25 25 25 25 25 25 25 25 25 26 26 27 27];
y = [75 75 75 76 76 77 77 78 78 78 78 78 79 79 79 79 79 79 79 79 80 80 80 80 80 80 80 80 81 82];

mean_x = mean(x);
mean_y = mean(y);
printf("Media lui x este %d si media lui y este %d\n", mean_x, mean_y);

disp_x = var(x);
disp_y = var(y);
printf("Dispersia lui x este %d si dispersia lui y este %d\n", disp_x, disp_y);

covar = cov(x, y);
printf("Covarianta este %d\n", covar);

coef = corrcoef(x, y);
printf("Coeficientul de corelatie este\n");
display(coef);

dr = polyfit(x, y, 1);
plot(x, dr(1)*x + dr(2), x, y, 'o');

printf("Pentru x = 2.5, valoarea lui y este %d\n", dr(1)*2.5 + dr(2));
printf("Pentru x = 3, valoarea lui y este %d\n", dr(1)*3 + dr(2));