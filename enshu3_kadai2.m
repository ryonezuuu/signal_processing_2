clear; clc; close all

L=10;
w = 0.54 - 0.46*cos(2*pi*(0:9)/(L-1));
w_h = hamming(L);

figure;plot(w);
figure;plot(w_h);

fft_w = fft(w);
figure;plot(abs(fft_w));