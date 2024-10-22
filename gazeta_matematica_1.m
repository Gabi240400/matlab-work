clear all;
clc;

# a este reprezentarea permutarii (1 2 3)(4 5 6) sub urmatoarea forma 
# 1 2 3 4 5 6
# 2 3 1 5 6 4
# Am ales sa nu reprezint si prima linie intrucat ea este practic reprezentata de pozitia elementelor in vector
a = [2 3 1 5 6 4];

# Generez toate permutarile de 6 elemente posibile
P = perms([1 2 3 4 5 6]);

# Numarul de permutari posibile
n = size(P, 1);

printf("Solutii:\n");
for i=1:n
  ok = 1;
  # vec1 = a * P(i, :)
  vec1 = zeros(1, 6);
  # vec2 = P(i, :) * a
  vec2 = zeros(1, 6);
  for j=1:6
    vec1(j) = P(i, a(j));
    vec2(j) = a(P(i, j));
    if vec1(j) != vec2(j)
      ok = 0;
      break;
    endif
  endfor
  if ok == 1
    display([1 2 3 4 5 6]);
    display(P(i, :));
    printf('\n')
  endif
endfor