%IDFT

clc;
clear;
close all;
X=[2 1-1i 0 1+1i];
%Without using inbuilt function
N=length(X);
x=zeros(4,1);
for n=0:N-1
 for k =0:N-1
 x(n+1)=(x(n+1)+X(k+1)*exp(1i*2*pi*n*k/N));
 end
end
x=x/N;
disp(round(x));
%using inbuilt function to verify
disp(ifft(X));