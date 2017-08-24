clc;
clear all;
close all;
x = input('Enter x value: ');
h = input('Enter h value: ');
m = length(x);
n = length(h);
X = [x zeros(1,n)];
H = [h zeros(1,m)];
for i = 1:m+n-1
    y(i) = 0;
    for j = 1:m
        if (i-j+1)>0
            y(i) = y(i) + X(j) * H(i-j+1);
        else
        end
    end
end
disp('coverted output is')
disp(y)
figure;stem(x);
figure;stem(h);
figure;stem(y);

        