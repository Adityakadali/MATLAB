a = [ zeros(1,4) ones(1,1) zeros(1,4) ]
n = [ -4:4 ]
stem(n, a)
xlabel('time')
ylabel('amplitude')
title('Unit Impulse')
b = [ zeros(1,4) ones(1,5)]
figure;stem(n,b)
xlabel('time')
ylabel('amplitude')
title('unit step')

