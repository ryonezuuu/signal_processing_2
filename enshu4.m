clear; clc; close all
x = [3.4 2.4 5.6 -0.5 6.0 2.8 3.0 -3.2 3.9 2.0]';
h = [1.0 0.6 0.4 -0.5 2.1]';
y = myconv(x, h); 
yy = conv(x, h); 
figure(1), plot(y)
figure(2), plot(yy)