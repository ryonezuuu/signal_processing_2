clear; clc; close all
Fs = 100;
t = 0:1/Fs:2;
f=sin(2*pi*3*t)+sin(2*pi*8*t);
figure(1);plot(f);
F=dft_sample(f);
figure(2);plot(abs(F));
ff=idft_sample(F);
figure(3);plot(ff);