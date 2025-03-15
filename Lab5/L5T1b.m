% Circuit Parameters
R = 3; % Resistance in ohms
L = 2; % Inductance in Henries

% Transfer Function Coefficients
num = [L 0]; % Numerator Coefficients
den = [L R]; % Denominator Coefficients

% Create Transfer Function
H = tf(num, den);

% Generate Bode Plot and get data
bode(H);
grid on;

% Display transfer function
disp(H);

% Calculate corner frequency (ω_c = R/L)
omega_c = R / L;
% Theoretical magnitude at ω_c (-3 dB)
mag_3dB_theoretical = 20*log10(1/sqrt(2)); % Approximately -3.0103 dB

% Get Bode data to find exact values
[mag, phase, w] = bode(H);
mag = squeeze(mag);
mag_db = 20*log10(mag);
phase = squeeze(phase);

% Find closest frequency to omega_c in Bode data
[~, idx] = min(abs(w - omega_c));
omega_3dB_actual = w(idx);
mag_3dB_actual = mag_db(idx);

fprintf('Frequency = %.4f rad/s, Magnitude = %.4f dB\n', omega_3dB_actual, mag_3dB_actual);