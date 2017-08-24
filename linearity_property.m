clc; clear all; close all;
x1 = [5 6 7 8]; %input('enter input sequence 1: ');
x2 = [2 3 4 5]; %input('enter input sequence 2: ');
N = length(x1);
a1 = 3;
a2 = 4;
x = a1.*x1 + a2.*x2;
xk = zeros(1,N);
for k = 0:1:N-1
    for n = 0:1:N-1
        xk(k+1) = xk(k+1) + x(n+1) *exp((-j*2*pi*n*k)/N);
    end
end
xk1 = zeros(1,N);
for k = 0:1:N-1
    for n = 0:1:N-1
        xk1(k+1) = xk1(k+1) + x1(n+1) * exp((-j*2*pi*n*k)/N);
    end
end
xk2 = zeros(1,N);
for k = 0:1:N-1
    for n = 0:1:N-1
        xk2(k+1) = xk2(k+1) + x2(n+1) * exp((-j*2*pi*n*k)/N);
    end
end
z = a1.*xk1 + a2.*xk2;
p = abs(z);
q = abs(xk);
disp(p);
disp(q);
if (ceil(p) == ceil(q))
    disp('Linearity property satisfied');
else 
    disp('Linearity property not satisfied');
end
subplot(4,2,1);stem(x1);xlabel('time-->');ylabel('magnitude-->');
title('Input sequence 1 14-487')
subplot(4,2,2);stem(x2);xlabel('time-->');ylabel('magnitude-->');
title('Input sequence 2')
subplot(4,2,3);stem(x);xlabel('time-->');ylabel('magnitude-->');
title('Linearized input sequence');
subplot(4,2,4);stem(abs(xk));xlabel('time-->');ylabel('magnitude-->');
title('DFT of input sequence');
subplot(4,2,5);stem(abs(xk1));xlabel('time-->');ylabel('magnitude-->');
title('DFT of input sequence 1');
subplot(4,2,6);stem(abs(xk2));xlabel('time-->');ylabel('magnitude-->');
title('DFT of input sequence 2');
subplot(4,2,7);stem(abs(z));xlabel('time-->');ylabel('magnitude-->');
title('lenearized DFTs ');







        