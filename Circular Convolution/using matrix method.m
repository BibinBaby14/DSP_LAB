% circular convolution using matrix method
clc;
clear all;
close all;
x = input('Enter the x: ');
x_ind = input('Enter the index of x: ');
len_x = length(x);
h = input('Enter the h: ');
h_ind = input('Enter the index of h: ');
len_h = length(h);
N = max(len_x,len_h);
new_x = [x,zeros(1,N-len_x)];
h1 = [h,zeros(1,N-len_h)];
hr =[];
h1 = h1(:,end:-1:1);
y_ind = 1:N;
for i = 1:length(h1)
    h1 =[h1(end) h1(1:end-1)];
    hr =[hr;h1];
end
y =hr*x';
disp(y);

%To plot it
figure;
subplot(3,3,1);
stem(x_ind,x);
title('x(n)');
xlabel('Index');
ylabel('Amplitude');
grid("on");
subplot(3,3,2);
stem(h_ind,h);
title('h(n)');
xlabel('Index');
ylabel('Amplitude');
grid("on");
subplot(3,3,3);
stem(y_ind,y);
title('y(n)');
xlabel('Index');
ylabel('Amplitude');
grid("on");
