%Linear convolution without using inbuilt function

clc;
clear all;
close all;
x = input('Enter the elements of x(n): ');
x_ind = input('Enter the index of x: ');
h = input('enter the elements of h(n): ');
h_ind = input('Enter the index of h: ');
y_ind = min(x_ind)+min(h_ind):max(x_ind)+max(h_ind);
x_len = length(x);
h_len = length(h);
y_len = x_len +h_len -1;
y = zeros(1,y_len);
for i = 1:x_len
    for j = 1:h_len
        y(i+j-1) = y(i+j-1)+x(i)*h(j);
    end
end
disp(y);
subplot(3,3,1);
stem(x_ind,x);
xlabel('index');
ylabel('Amplitude');
title('x(n)');
subplot(3,3,2);
stem(h_ind,h);
xlabel('index');
ylabel('Amplitude');
title('h(n)');
subplot(3,3,3);
stem(y_ind,y);
xlabel('index');
ylabel('Amplitude');
title('y(n)');
