%Properties of DFT
clc;
clear all;
close all;

%linearity
x1=[1 2 3 4];
x2=[2 1 2 1];
a1=2;
a2=3;
x1k=fft(x1);
x2k=fft(x2);
lhs=(a1*x1)+(a2*x2);
lhsk=fft(lhs);
disp('LHS=');

disp(lhsk);
rhsk=(a1*x1k)+(a2*x2k);
disp("RHS=");
disp(rhsk);

%Convolution property
x3=[1,2,3,4];
x4=[2,1,2,1];
N = max(length(x3),length(x4));
convolution = cconv(x3,x4,N);
lhsk = fft(convolution);
disp(lhsk);
x3k = fft(x3);
x4k = fft(x4);
Rhsk = x3k.*x4k;
disp(Rhsk);

%multiplication property
x1 = [1,2,3,4];
x2 =[ 1,1,0,0];
x1k = fft(x1);
x2k = fft(x2);
N = max(length(x1),length(x2));
lhs =fft(x1.*x2);
disp(lhs);
rhs = cconv(x1k,x2k,N);
rhsk = rhs/N;
disp(rhsk);

%Parsevals Theorem

% Define a discrete signal
x = [1, 2, 3, 4]; % Example signal

% Length of the signal
N = length(x);

% Compute the DFT of the signal
X = fft(x);

% Calculate the energy in the time domain
energy_time = sum(abs(x).^2);
disp('Energy in time domain:');
disp(energy_time);

% Calculate the energy in the frequency domain
energy_freq = (1/N) * sum(abs(X).^2);
disp('Energy in frequency domain:');
disp(energy_freq);
