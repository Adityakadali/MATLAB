clc;clear all ;close all;
N = input('Enter length of DFT: ');
x = input('Enter input sequence: ');
x = bitrevorder(x);
subplot(2,1,1);stem(x);xlabel('time');ylabel('magnitude');title('FFT Input seq');
e = log2(N);
for s = 1:e
    x = df(x,N,s);
end
subplot(2,1,2);stem(x);xlabel('time');ylabel('magnitude');title('FFT output seq')
