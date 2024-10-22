#Exercitiul 2
p = input("Parametrul p = ");
x = 0:16;
f = figure('Name', 'Legea geometrica');
figure(f);
plot(geopdf(x, p), 'o');
hold on;
stairs(geocdf(x, p));

#Exercitiul 3
n = input("Parametrul n = ");
p = input("Parametrul p = ");
x = 0:n;
f = figure('Name', 'Legea binomiala');
figure(f);
plot(binopdf(x, n, p), 'o');
hold on;
stairs(binocdf(x, n, p));

#Exercitiul 4
lambda = input("Parametrul lambda = ");
x = 0:4 * lambda;
f = figure('Name', 'Legea binomiala');
figure(f);
plot(exppdf(x, lambda), 'o');
hold on;
stairs(expcdf(x, lambda));

#Exercitiul 5
n = input("Parametrul n = ");
[m, sigma] = tstat(n);
sigma = sqrt(sigma);
x = m - 3.*sigma : 0.01 : m + 3.*sigma;
f = figure('Name', 'Legea Student');
figure(f);
plot(x, tpdf(x, n), x, tcdf(x, n));

#Exercitiul 6
m = input("Parametrul m = ");
sigma = input("Parametrul sigma = ");
[m, sigma] = normstat(m, sigma);
sigma = sqrt(sigma);
x = m - 3.*sigma : 0.01 : m + 3.*sigma;
f = figure('Name', 'Legea normala');
figure(f);
plot(x, normpdf(x, m, sigma), x, normcdf(x, m, sigma));

#Exercitiul 7
lambda = input("Parametrul lambda = ");
[m, sigma] = expstat(lambda);
sigma = sqrt(sigma);
x = max(0, m - 3*sigma): 0.01 : m + 3*sigma;
f = figure('Name', 'Legea exponentiala');
figure(f);
plot(x, exppdf(x, lambda), x, expcdf(x, lambda));