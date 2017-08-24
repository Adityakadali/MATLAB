clc;
clear all;
close all;
a = [1 2 3 4]; %input('Enter a value: ');
b = [2 3 4 5]; %input('Enter b value: ');
n1 = length(a);
n2 = length(b);
n = n1 + n2 -1;
a = [a zeros(1,n-n1)];
b = [b zeros(1,n-n2)];
k = n; a =a';b=b'; c =b;
for i = 1:k-1
    b = circshift(b,1);
    c = [c b];
end;
z = c*b;
disp('coverted output');
disp(z');

