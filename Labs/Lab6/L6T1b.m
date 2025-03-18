syms s t a
x1 = 1 / ((s-a)^2);
x2 = exp(-2 * s)/sqrt(s^2 + 1);
x3 = (2/5)*(log((s)^2));

S1 = ilaplace(x1, s, t);
S2 = ilaplace(x2, s, t);
S3 = ilaplace(x3, s, t);

disp(table([x1; x2; x3], [S1; S2; S3], 'VariableNames', {'Function', 'Inverse Laplace Transform'}));