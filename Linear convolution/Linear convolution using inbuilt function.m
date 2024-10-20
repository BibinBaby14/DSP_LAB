%Linear convolution using inbuilt function

clc;
clear all;
close all;
x = input('Enter the elements of x(n): ');
x_ind = input('Enter the index of x: ');
h = input('enter the elements of h(n): ');
h_ind = input('Enter the index of h: ');
y = conv(x,h);
y_ind = min(x_ind)+min(h_ind):max(x_ind)+max(h_ind);
disp(y);
stem(y_ind,y);
xlabel("Time Index");
ylabel("Amplitude");
title("Linear convolution");
