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

% Calculate corner frequency and -3 dB point
wc = 1/(R*C);                      % Corner frequency
mag_wc_dB = 20*log10(1/sqrt(2));   % -3 dB magnitude

fprintf('   Decline begins at %.4f rad/s with magnitude %.4f dB\n\n', wc, mag_wc_dB);

fprintf('   Frequency: %.4f rad/s\n', wc);
fprintf('   Magnitude: %.4f dB\n\n', mag_wc_dB);

fprintf('   This is a low-pass filter because the magnitude starts at 0 dB and declines.\n\n');

fprintf("         F (rad/s)   |   Mag (dB)     |    Phase (degrees)\n");
for i = 1:length(w)
    fprintf('   %12.4f      | %9.4f      |    %9.4f\n', w(i), mag_dB(i), phase(i));
end

% Generate Bode Plot
bode(H);
grid on;

% Display transfer function
disp(H);
