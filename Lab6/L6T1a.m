syms t s
x1 = (1/4) * sin(t);
x2 = (5-exp(-t))/(4*sqrt(pi*(t^3)));
x3 = cos(1/(2*t))/sqrt(pi*t);

S1 = laplace(x1, t, s);
S2 = laplace(x2, t, s);
S3 = laplace(x3, t, s);

disp("Laplace of functions is: ");
fprintf("Laplace of %s is %s\n", x1, S1);
fprintf("Laplace of %s is %s\n", x2, S2);
fprintf("Laplace of %s is %s\n", x3, S3);
