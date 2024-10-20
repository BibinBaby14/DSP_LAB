%Circular convolution using linear convolution

clc;
clear all;
close all;
x=[1 2 3 4];
h=[1 1 1];
y=conv(x,h);
conv_len=max(length(x),length(h));
result=[y(1:conv_len)];
new_arr=[y(conv_len+1:length(y)) zeros(1,length(y)-conv_len)];
result=result+new_arr;

disp("Circular convolution using Linear Convolution:")
disp(result);

