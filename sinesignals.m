close all; clear all; clc
n = linspace(0,2);
% sin(2*pi*f*n)
y1 = sin(2*pi*0.5*n);
y2 = sin(2*pi*1.5*n)/3;
y3 = sin(2*pi*2.5*n)/5;
y4 = sin(2*pi*3.5*n)/7;
y5 = sin(2*pi*4.5*n)/9;
y = y1 + y2 + y3 + y4 + y5 ;
hold on;
stem(n,y1);stem(n,y2);stem(n,y3);stem(n,y4);
stem(n,y5);stem(n,y);
legend('y1','y2','y3','y4','y5','y');
hold off
figure; plot(n,y,n,y1,n,y2,n,y3,n,y4,n,y5);
xlabel('time -->');ylabel('magnitude-->');
title('time');
legend('y1','y2','y3','y4','y5','y');

x = y1.*y2;
figure;
subplot(2,2,1);stem(n,y1,'filled');
subplot(2,2,2);stem(n,y2,'filled');
subplot(2,1,2);stem(n,x,'filled');

figure;
subplot(3,1,1); plot(n,y1);
subplot(3,1,2); plot(n,y2);
subplot(3,1,3); plot(n,x);
