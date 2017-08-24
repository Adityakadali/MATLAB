clc;
clear all;
close all;
a =  input('enter x value: ');
b = input('enter y value: ');
n1 = length(a);
n2 = length(b);
if n1>n2
    a = [a zeros(n1-n2)];
else 
    b = [b zeros(n2-n1)];
end
k = max(n1,n2);
a = a'; b = b'; c = b;
for i = 1:k-1
    b = circshift(b,1);
    c = [c b];
end
z = c * a;
disp('converted output is')
disp(z')
subplot(3,1,1);stem(a)
subplot(3,1,2);stem(b);
subplot(3,1,3);stem(z');
