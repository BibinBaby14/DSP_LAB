clc;
clear all;
close all;

% Time vectors
t = -5:1:5;  % For discrete plots of unit impulse and step
t3 = 0:1:5;  % For discrete ramp
t4 = 0:0.01:1;  % For continuous sine and cosine
t6 = 0:0.01:1;  % For continuous square waves
t8 = 0:0.25:50;  % For continuous triangular wave
t9 = 0:0.1:10;  % For continuous exponential signal

% Unit Impulse
y1 = [zeros(1, 5), ones(1, 1), zeros(1, 5)];
subplot(3, 3, 1);
stem(t, y1, 'filled'); % Discrete plot
xlabel('Time Index');
ylabel('Amplitude');
title('Unit Impulse');

% Unit Step
y2 = [zeros(1, 5), ones(1, 6)];
subplot(3, 3, 2);
stem(t, y2, 'filled'); % Discrete plot
xlabel('Time Index');
ylabel('Amplitude');
title('Unit Step');

% Ramp Function
y3 = t3;
subplot(3, 3, 3);
plot(t3, y3, 'o-', 'MarkerFaceColor', 'b'); % Continuous and discrete plot
hold on;
stem(t3, y3, 'filled'); % Discrete plot
hold off;
xlabel('Time Index');
ylabel('Amplitude');
title('Ramp Function');
legend('Continuous', 'Discrete');

% Sine Wave
f4 = 4;
subplot(3, 3, 4);
plot(t4, sin(2 * pi * f4 * t4)); % Continuous plot
hold on;
stem(t4, sin(2 * pi * f4 * t4),  'filled'); % Discrete plot
hold off;
axis([0 1 -2 2]);
xlabel('Time Index');
ylabel('Amplitude');
title('Sine Wave');
legend('Continuous', 'Discrete');

% Cosine Wave
subplot(3, 3, 5);
plot(t4, cos(2 * pi * f4 * t4)); % Continuous plot
hold on;
stem(t4, cos(2 * pi * f4 * t4), 'filled'); % Discrete plot
hold off;
axis([0 1 -2 2]);
xlabel('Time Index');
ylabel('Amplitude');
title('Cosine Wave');
legend('Continuous', 'Discrete');

% Square Wave - Bipolar
f6 = 10;
subplot(3, 3, 6);
plot(t6, square(2 * pi * f6 * t6)); % Continuous plot
hold on;
stem(t6, square(2 * pi * f6 * t6), 'filled'); % Discrete plot
hold off;
axis([0 1 -2 2]);
xlabel('Time Index');
ylabel('Amplitude');
title('Square Wave - Bipolar');
legend('Continuous', 'Discrete');

% Square Wave - Unipolar
subplot(3, 3, 7);
plot(t6, sqrt(square(2 * pi * f6 * t6))); % Continuous plot
hold on;
stem(t6, sqrt(square(2 * pi * f6 * t6)), 'filled'); % Discrete plot
hold off;
axis([0 1 -2 2]);
xlabel('Time Index');
ylabel('Amplitude');
title('Square Wave - Unipolar');
legend('Continuous', 'Discrete');

% Triangular Wave
f8 = 5;
subplot(3, 3, 8);
plot(t8, sawtooth(2 * pi * f8 * t8, 0.5)); % Continuous triangular wave
hold on;
stem(t8, sawtooth(2 * pi * f8 * t8, 0.5), 'r', 'filled'); % Discrete plot
hold off;
axis([0 10 -1 1]);
xlabel('Time Index');
ylabel('Amplitude');
title('Triangular Wave');
legend('Continuous', 'Discrete');

% Exponential Signal
y9 = exp(t9);
subplot(3, 3, 9);
plot(t9, y9); % Continuous plot
hold on;
stem(t9, y9, 'filled'); % Discrete plot
hold off;
xlabel('Time Index');
ylabel('Amplitude');
title('Exponential Signal');
legend('Continuous', 'Discrete');
%simulation of basic test signsls done;
