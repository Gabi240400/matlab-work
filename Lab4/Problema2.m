clear;
clc;

x = [-1 0 1 2];
y = [2 1 2 11];

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

dr = polyfit(x, y, 2);
plot(x, dr(1)*x.^2 + dr(2)*x + dr(3), x, y, 'o');

printf("Pentru x = 2.5, valoarea lui y este %d\n", dr(1)*2.5.^2 + dr(2)*2.5 + dr(3));
printf("Pentru x = 3, valoarea lui y este %d\n", dr(1)*3.^2 + dr(2)*3 + dr(3));