%Linear convolution using circular convolution

clc;
clear all;
close all;
x=[1 2 3 4];
h=[1 1 1];
n=length(x)+length(h)-1;
x=[x zeros(1,n-length(x))];
h=[h zeros(1,n-length(h))];
x1=fft(x);
h1=fft(h);
y1=x1.*h1;
y=ifft(y1);
disp("Linear Convolution using Circular Convolution :");
disp(y);
