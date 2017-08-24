clc;clear all; close all;
x = [1 2 3 4];
N = length(x);
xk = zeros(1,N);
for k = 0:1:N-1
    for n = 0:1:N-1
        xk(k+1) = xk(k+1) + x(n+1) *exp((-j*2*pi*n*k)/N);
    end
end
z = xk.*conj(xk);
z = sum(z)/N;
zx = x.*x;
zx = sum(zx);
disp(z);
disp(zx);
if (z == zx)
    disp('Parsvals theorem proved');
else
    disp('Parsavals theorem not proved');
end
stem(x);
xlabel('time');ylabel('magnitude');title('Input sequence 14-487');
