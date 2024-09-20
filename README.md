# DSP_LAB
clc;
clear all;
close all;
x = [1,2,3,4];
h = [1,1,1];
x_len = length(x);
h_len = length(h);
N = max(x_len,h_len);
x_new = [x,zeros(1:N-x_len)];
h1 = [h,zeros(1:N-h_len)];
hr =[];
h1 = h1(:,end:-1:1);
for i = 1:N
    h1=[h1(end) h1(1:end-1)];
    hr =[hr;h1];
end

y = hr*x';
disp(y);