# Problema 1
mu = input("Parametrul mu = ");
sigma = input("Parametrul sigma = ");
N = input("Parametrul N = ");

x = zeros(1, N);

for i = 1 : N
  x(i) = normrnd (mu, sigma);
endfor

x = sort(x);

x_min = min(x);
x_max = max(x);

n = fix(1+10*log10(N)/3);

d = (x_max - x_min)/n;

c = zeros(1, n+1);
for i = 1 : n+1
  c(i) = x_min + (i - 1)*d;
endfor

[f, middle] =hist(x, n);

printf("Nr. |        Clasa       | Frecv abs | Mijl cls | Frecv rel \n");
printf("----------------------------------------------------------- \n");
for i = 1 : n-1
  printf("%3d | [%7.4f, %7.4f) | %9d | %8.4f | %5.4f \n", i, c(i), c(i + 1), f(i), middle(i), f(i)/N);
endfor
printf("%3d | [%7.4f, %7.4f) | %9d | %8.4f | %5.4f \n", n, c(n), c(n + 1), f(n), middle(n), f(n)/N);
printf("\n");

f1 = figure('Name', 'Graphs');
hist(x, n);
hold on;
plot(middle, f, '*-');

medie_aritm = mean(x);
medie_geom = geomean(x);
medie_armon = harmmean(x);
printf("Media Aritmetica: %d, Media Geometrica: %d, Media Armonica: %d\n", medie_aritm, medie_geom, medie_armon);

mediana = median(x);
printf("Mediana: %d\n", mediana);

i = find(f == max(f));
mod = middle(i);
printf("Mod: %d\n", mod);

cuart1 = prctile(x, 25);
cuart2 = prctile(x, 50);
cuart3 = prctile(x, 75);
printf("Cuartila 1: %d, 2: %d, 3: %d\n", cuart1, cuart2, cuart3);

disp = var(x);
abatarea_standard = std(x);
printf("Dispersia: %d, Abaterea Standard: %d\n", disp, abatarea_standard);

mom1 = moment(x, 1);
mom2 = moment(x, 2);
mom3 = moment(x, 3);
mom4 = moment(x, 4);
printf("Moment centrat de ordin 1: %d, 2: %d, 3: %d, 4: %d\n", mom1, mom2, mom3, mom4);

# Problema 2
a = input("Parametrul a = ");
b = input("Parametrul b = ");
N = input("Parametrul N = ");

x = zeros(1, N);

for i = 1 : N
  x(i) = unifrnd(a, b);
endfor

x = sort(x);

x_min = min(x);
x_max = max(x);

n = fix(1+10*log10(N)/3);

d = (x_max - x_min)/n;

c = zeros(1, n+1);
for i = 1 : n+1
  c(i) = x_min + (i - 1)*d;
endfor

[f, middle] =hist(x, n);

printf("Nr. |        Clasa       | Frecv abs | Mijl cls | Frecv rel \n");
printf("----------------------------------------------------------- \n");
for i = 1 : n-1
  printf("%3d | [%7.4f, %7.4f) | %9d | %8.4f | %5.4f \n", i, c(i), c(i + 1), f(i), middle(i), f(i)/N);
endfor
printf("%3d | [%7.4f, %7.4f) | %9d | %8.4f | %5.4f \n", n, c(n), c(n + 1), f(n), middle(n), f(n)/N);
printf("\n");

f1 = figure('Name', 'Graphs');
hist(x, n);
hold on;
plot(middle, f, '*-');

medie_aritm = mean(x);
medie_geom = geomean(x);
medie_armon = harmmean(x);
printf("Media Aritmetica: %d, Media Geometrica: %d, Media Armonica: %d\n", medie_aritm, medie_geom, medie_armon);

mediana = median(x);
printf("Mediana: %d\n", mediana);

i = find(f == max(f));
mod = middle(i);
printf("Mod: %d\n", mod);

cuart1 = prctile(x, 25);
cuart2 = prctile(x, 50);
cuart3 = prctile(x, 75);
printf("Cuartila 1: %d, 2: %d, 3: %d\n", cuart1, cuart2, cuart3);

disp = var(x);
abatarea_standard = std(x);
printf("Dispersia: %d, Abaterea Standard: %d\n", disp, abatarea_standard);

mom1 = moment(x, 1);
mom2 = moment(x, 2);
mom3 = moment(x, 3);
mom4 = moment(x, 4);
printf("Moment centrat de ordin 1: %d, 2: %d, 3: %d, 4: %d\n", mom1, mom2, mom3, mom4);

# Problema 3
mu = input("Parametrul mu = ");
N = input("Parametrul N = ");

x = zeros(1, N);

for i = 1 : N
  x(i) = exprnd(mu);
endfor

x = sort(x);

x_min = min(x);
x_max = max(x);

n = fix(1+10*log10(N)/3);

d = (x_max - x_min)/n;

c = zeros(1, n+1);
for i = 1 : n+1
  c(i) = x_min + (i - 1)*d;
endfor

[f, middle] =hist(x, n);

printf("Nr. |        Clasa       | Frecv abs | Mijl cls | Frecv rel \n");
printf("----------------------------------------------------------- \n");
for i = 1 : n-1
  printf("%3d | [%7.4f, %7.4f) | %9d | %8.4f | %5.4f \n", i, c(i), c(i + 1), f(i), middle(i), f(i)/N);
endfor
printf("%3d | [%7.4f, %7.4f) | %9d | %8.4f | %5.4f \n", n, c(n), c(n + 1), f(n), middle(n), f(n)/N);
printf("\n");

f1 = figure('Name', 'Graphs');
hist(x, n);
hold on;
plot(middle, f, '*-');

medie_aritm = mean(x);
medie_geom = geomean(x);
medie_armon = harmmean(x);
printf("Media Aritmetica: %d, Media Geometrica: %d, Media Armonica: %d\n", medie_aritm, medie_geom, medie_armon);

mediana = median(x);
printf("Mediana: %d\n", mediana);

i = find(f == max(f));
mod = middle(i);
printf("Mod: %d\n", mod);

cuart1 = prctile(x, 25);
cuart2 = prctile(x, 50);
cuart3 = prctile(x, 75);
printf("Cuartila 1: %d, 2: %d, 3: %d\n", cuart1, cuart2, cuart3);

disp = var(x);
abatarea_standard = std(x);
printf("Dispersia: %d, Abaterea Standard: %d\n", disp, abatarea_standard);

mom1 = moment(x, 1);
mom2 = moment(x, 2);
mom3 = moment(x, 3);
mom4 = moment(x, 4);
printf("Moment centrat de ordin 1: %d, 2: %d, 3: %d, 4: %d\n", mom1, mom2, mom3, mom4);
