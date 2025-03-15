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

% Display Transfer Function
disp('Transfer Function:');
disp(H);

% Generate Bode Plot
figure;
bode(H);
grid on;
title('Bode Plot of RLC Circuit');

% Get magnitude and phase values
[mag, phase, w] = bode(H);

% Convert magnitude to dB
mag_db = 20*log10(squeeze(mag));

% Display results in a table
results_table = table(w, mag_db, squeeze(phase), 'VariableNames', {'Frequency_rad_s', 'Magnitude_dB', 'Phase_deg'});
disp(results_table(1:10:end,:));  % Display every 10th row for brevity