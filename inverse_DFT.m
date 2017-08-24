clc;clear all;close all;
X = input('Enter value of X(k): ');
N = input('Enter length of DFT: ');
k = [0:1:N-1];
n = [0:1:N-1];
nk = n' *k;
wn = exp(-j*2*pi/N)
wnk = wn.^nk;
a = conj(wnk);
x = 1/N*X*a;
M = abs(X);
theta = angle(X);
subplot(3,1,1);stem(k,M);
xlabel('frequency');ylabel('phase angle');
subplot(3,1,2);stem(k,theta);
subplot(3,1,3);stem(n,x);

