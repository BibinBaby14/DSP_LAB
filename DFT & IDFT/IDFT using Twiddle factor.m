%IDFT using twiddle factor
clc;
clear all;
close all;
X = [2; 1 - 1i; 0; 1 + 1i];  
N = length(X);                

% Initialize the output for IDFT
x = zeros(N, 1); 

% Array for twiddle factors
twiddle_factors = zeros(N, N);   

for n = 0:N-1  
    for k = 0:N-1  
        twiddle = exp(2 * 1i * pi * k * n / N); 
        
        twiddle_factors(n+1, k+1) = twiddle; 
        
        x(n+1) = x(n+1) + X(k+1) * twiddle;  
    end
end


x = x / N;  
% Display twiddle factors
disp('Twiddle factors for IDFT:');
disp(twiddle_factors);  

% Display IDFT result
disp('IDFT result:');
disp(x);
