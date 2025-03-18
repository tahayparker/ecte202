% Circuit Parameters
R = 5; % Resistance in ohms
C = 2; % Capacitance in Farads

% Transfer Function Coefficients
num = [1]; % Numerator Coefficients
den = [R*C 1]; % Denominator Coefficients = [10 1]

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
