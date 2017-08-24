clear all;close all;clc;
x = input('Enter input sequence: ');
subplot(2,1,1);stem(x,'filled')
n = length(x);
y = fft(x);
psd = y.*conj(y);
psd = psd/n;
disp(psd);
subplot(2,1,2);stem(psd,'filled');