%circular convolution using concentric circle method

clc;
clear all;
close all;
x = input('Enter the x: ');
x_ind = input('enter the index of x: ');
h = input('Enter the elements of h: ');
h_ind = input('enter the index of h: ');
x_len = length(x);
h_len = length(h);
N = max(x_len,h_len);
x_new = [x,zeros(1,N-x_len)];
h_new = [h,zeros(1,N-h_len)];
y_ind = 1:N;
y =zeros(1,N);

for n = 1:N
    for k = 1:N
        y(n) =y(n)+x(k)*h(mod(n-k,N)+1);
    end
end
disp(y);
%To plot it
figure;
subplot(3,3,1);
stem(x_ind,x);
title('x(n)');
xlabel('Index');
ylabel('Amplitude');
grid;
subplot(3,3,2);
stem(h_ind,h);
title('h(n)');
xlabel('Index');
ylabel('Amplitude');
grid;
subplot(3,3,3);
stem(y_ind,y);
title('y(n)');
xlabel('Index');
ylabel('Amplitude');
grid;
