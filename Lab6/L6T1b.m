syms s t a
x1 = 1 / ((s-a)^2);
x2 = exp(-2 * s)/sqrt(s^2 + 1);
x3 = (2/5)*(log((s)^2));

S1 = ilaplace(x1, s, t);
S2 = ilaplace(x2, s, t);
S3 = ilaplace(x3, s, t);

disp("Inverse Laplace of functions is: ");
fprintf("Inverse Laplace of %s is %s\n", x1, S1);
fprintf("Inverse Laplace of %s is %s\n", x2, S2);
fprintf("Inverse Laplace of %s is %s\n", x3, S3);