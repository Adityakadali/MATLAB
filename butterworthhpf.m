clc; clear all;
close all;
ap= input('enter pass band attenuation');
as= input('enter stop band attenuation');
fp= input('enter pass band edge frequency');
fs= input('enter stop band edge frequency');
F= input('enter sampling frequency');
wp= 2*fp./F;
ws= 2*fs./F;
[N,wn]= buttord(wp,ws,ap,as);
[b,a]= butter(N,wn,'high');
w= 0:0.1:pi
[h,wh]= freqz(b,a,w)
mag= 20*log(abs(h));
ph= angle(h);
grid on;

plot((w/pi)*F/2, mag);
grid on;
title('butterworth high pass filter 14-487');
xlabel('frequency(Hz)'); ylabel('gain(dB)');

