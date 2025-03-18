syms t s
x1 = (1/4) * sin(t);
x2 = (5-exp(-t))/(4*sqrt(pi*(t^3)));
x3 = cos(1/(2*t))/sqrt(pi*t);

S1 = laplace(x1, t, s);
S2 = laplace(x2, t, s);
S3 = laplace(x3, t, s);

disp(table([x1; x2; x3], [S1; S2; S3], 'VariableNames', {'Function', 'Laplace Transform'}));