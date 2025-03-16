% Circuit Parameters
R1 = 2;    % Ohms
L1 = 1;    % Henry
R2 = 4;    % Ohms
C1 = 0.1;  % Farad

% Transfer Function Coefficients
num = [10];           % Numerator: 10
den = [1 4.5 15];     % Denominator: s³ + 4.5s² + 15

% Create Transfer Function
H = tf(num, den);

% Generate Bode Plot and get data
[mag, phase, w] = bode(H);
mag = squeeze(mag);
phase = squeeze(phase);
w = squeeze(w);
mag_dB = 20*log10(mag);

disp(table(w, mag_dB, phase, 'VariableNames', {'Frequency_rad_s', 'Magnitude_dB', 'Phase_deg'}));

% Generate Bode Plot
bode(H);
grid on;

% Display transfer function
disp(H);