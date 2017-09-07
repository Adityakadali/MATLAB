clc;clear all;close all;
ap = 5; %input('Enter passband attenution: '); %5
as = 25; %input('Enter stopband attenution: '); %25
fp = 500; %input('Enter passband edge frequency: '); %500
fs = 700; %input('Enter stopband edge frequency: '); %700
F = 2000; %input('Enter sampling frequency: '); %2000
wp = 2*fp./F;
ws = 2*fs./F;
[N,wn] = buttord(wp,ws,ap,as); %observation
[b,a] = butter(N,wn,'low'); %observation
w = 0:0.1:pi;
[h,wh] = freqz(b,a,w);
mag = 20*log(abs(h));
ph = angle(h);
subplot(2,1,1);plot((w/pi)*F/2,mag);grid on;
xlabel('Frequency in Hz');ylabel('gain in dB');
subplot(2,1,2);plot((w/pi)*F/2,ph);grid on;
xlabel('Frequency in Hz');ylabel('Phase in radians');