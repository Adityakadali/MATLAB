clear all;clc;close all;
x = input('Enter input sequence: ');
x1 = [x x];
n = length(x);
xk = zeros(1,2*n);
for k = 0:2*n-1
    for m = 0:2*n-1
        xk(k+1) = xk(k+1)+x1(m+1)*exp((-1i*2*pi*m*k)/n);
    end
end
xk = abs(xk);
disp(xk);
subplot(2,1,1);stem(x);
subplot(2,1,2);stem(xk);