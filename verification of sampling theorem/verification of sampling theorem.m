clc;
clear all;
close all;
t = 0:0.01:1;
fm =10;
y =sin(2*pi*fm*t);
subplot(2,2,1);
plot(t,y);
hold on;
stem(t,y);
hold off;
legend("continuos","Discrete");
xlabel("Time Index");
ylabel("Amplitude");
title('Sine wave');

% under sampling
fs1 = fm;
t1 = 0:1/fs1:1;
y1 = sin(2*pi*fm*t1);
subplot(2,2,2);
plot(t1,y1);
hold on;
stem(t1,y1);
hold off;
legend("continuos","Discrete");
xlabel("Time Index");
ylabel("Amplitude");
title('under sampling');

% Nyquist sampling
 fs2 = 4*fm;
 t2 = 0:1/fs2:1;
 y2 = sin(2*pi*fm*t2);
 subplot(2,2,3);
 plot(t2,y2);
 hold on;
 stem(t2,y2);
 hold off;
 legend("continuos","Discrete");
 xlabel("Time Index");
 ylabel("Amplitude");
 title('Nyquist sampling');
 
 % Over sampling

 fs3 = 10*fm;
 t3 = 0:1/fs3:1;
 y3 = sin(2*pi*fm*t3);
 subplot(2,2,4);
 plot(t3,y3);
 hold on;
 stem(t3,y3);
 hold off;
 legend("continuos","Discrete");
 xlabel("Time Index");
 ylabel("Amplitude");
 title('Over Sampling');
 
