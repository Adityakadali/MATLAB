function y = df(x,N,s)
L = 2^s;
p = 1;
for n = 1:L:N
    for l = 1:L/2:L
        for r = 0:1:L/2-1
            A(p,l+r) = x(n+r)+x(n+L/2+r)*exp((-j*2*pi*(l-1+r))/L);
        end
    end
p = p+1;    
end
k = N/L;
b = 1;
for t = 1:k;
    for u = 1:L
        y(b) = A(t,u)
        b = b+1;
    end
end
