% Circuit Parameters
R = 3; % Resistance in ohms
L = 2; % Inductance in Henries

% Transfer Function Coefficients
num = [L 0]; % Numerator Coefficients
den = [L R]; % Denominator Coefficients

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