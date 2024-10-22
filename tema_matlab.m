clc;
clear all;

# A este o matrice generata aleator
A = rande(35, 35);

[Q, C] = qr(A);
display(Q); # Q este o matrice ortogonala
display(Q*transpose(Q));

for i = 1:35
  if A(i, i) < 0
    A(i, i) = -A(i, i)
  endif
endfor
X = triu(A);
display(A);
B = transpose(X)*X;
display(B);
try chol(B)
    disp('Matricea este simetrica si pozitiv definita.')
catch ME
    disp('Matricea NU este simetrica si pozitiv definita')
end
