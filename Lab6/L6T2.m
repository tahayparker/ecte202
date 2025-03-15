num1 = [3 3 1];
den1 = [1 3 2 0 0];

num2 = [2 1];
den2 = [2 2 0 0];

num3 = [1 4 1 2];
den3 = [1 3 1];

% Decomposing into partial fractions
[r1, p1, k1] = residue(num1,den1)
[r2, p2, k2] = residue(num2,den2)
[r3, p3, k3] = residue(num3,den3)

