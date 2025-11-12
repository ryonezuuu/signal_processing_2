clear all; clc; close all

N=200;
L=1024;
dw = pi/(L-1);
wp = 0.35;
pe = ceil(wp*L);

d = [ones(pe, 1); zeros(L-pe, 1)];
Q = [ones(L, 1) cos((0:L-1)'*(1:(N-1))*dw)];

a = (Q'*Q)\(Q'*d);

coef = [flipud(a(2:end))/2; a(1); a(2:end)/2];

H = fft(coef, 2*L);
figure(1); plot(1:length(H(1:L)), abs(H(1:L)), 1:length(H(1:L)), d)
saveas(figure(1),"img_7_"+N+"_"+wp+".png","png");