clc;clear all; close all;
x = input('Enter x(n): ');
n = input('Enter length of DFT: ');
N = [0:1:n-1]; k = [0:1:n-1];
nk = N' * k;
wn = exp(-j*2*pi/n);
wnk = wn.^nk;
%a = conj (wnk)
X = wnk * x';
subplot(3,1,1);stem(N,X);
xlabel('time-->');
ylabel('magnitude-->');
title('x 14481a0487');
m = abs(X);
theta = angle(X);
subplot(3,1,2);stem(k,m);
subplot(3,1,3);stem(k,theta);