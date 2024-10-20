%DFT using twiddle factor
clc;
clear all;
close all;
x = [1;2;3;4];
N = length(x);   
X = zeros(N, 1); 
%array for twiddle factor
twiddle_factors = zeros(N, N); 

for k = 0:N-1  
    for n = 0:N-1
        twiddle = exp(-2*1i * pi * k * n / N);  
        
        % Store the twiddle factor
        twiddle_factors(k+1, n+1) = twiddle; 

        X(k+1) = X(k+1) + x(n+1) * twiddle; 
    end
end

% Display twiddle factors
disp('Twiddle factors for DFT:');
disp(twiddle_factors);  

% Display DFT result
disp('DFT of x:');
disp(X); 
disp(fft(X))
