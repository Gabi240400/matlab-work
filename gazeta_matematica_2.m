clc;
clear all;

# Calculez suma pentru p = 4
s = factorial(1) + factorial(2) + factorial(3) + factorial(4);
ult_cifra = mod(s, 10);
if ult_cifra == 2 || ult_cifra == 3 || ult_cifra == 7 || ult_cifra == 8
  printf("Pentru p>=5, ultima cifra a sumei va fi mereu %d, intrucat p! va avea mereu ultima cifra 0.\n", ult_cifra);
  printf("Deci, suma nu va putea fi niciodata patrat perfect.\n");
  # In acest caz, calculez fiecare suma pentru p = 1, 2, 3 sau 4 si verific daca aceasta este patrat perfect
  printf("Solutii:\n");
  for i = 1:4
    suma = 0;
    for j = 1:i
      suma = suma + factorial(j);
    endfor
    rad = sqrt(suma);
    app_rad = ceil(rad);
    if rad == app_rad
      printf("p = %d, q = %d\n", i, app_rad);
    endif
  endfor
endif

