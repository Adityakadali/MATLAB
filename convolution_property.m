clc;
clear all;
close all;
x1 =  [1 2 3 4];
x2 = [1 2 1 2];
x_t1 = x1;
x_t2 = x2;
N = length(x1);
x1 = x1';
x2 = x2';
h = x1;
for p =1:N
    h = circshift(h,1);
    x1 = [x1 h];
end
y = x2*x1;
xk1 = [zeros(1,N)];
for k = 0:N-1
    for n = 0:N-1
        xk1(k+1) = xk1(k+1)+x_t1(n+1)*exp((-j*2*pi*n*k)/N);
    end
end
xk2 = [zeros(1,N)];
for k = 0:N-1
    for n = 0:N-1
        xk2(k+1) = xk2(k+1)+x_t2(n+1)*exp((-j*2*pi*n*k)/N);
    end
end
z = xk1.*xk2;
zn = [zeros(1,N)];
for n = 0:N-1
    for k = 0:N-1
        zn(n+1) = zn(n+1)+z(k+1)*exp((j*2*p1*n*k)/N);
    end
end
zn = zn./N

        
