clear all; clc; close all

N=24;   %fixed
L=1024; %fixed
dw = pi/(L-1);
wp = 0.25;  %fixed
ws = 0.35;

pe = ceil(wp*L);
se = ceil(ws*L);

d = [ones(pe, 1); zeros(L-pe, 1)];
Q = [ones(L, 1) cos((0:L-1)'*(1:(N-1))*dw)];

pm = 0.1;
sm = 1.0;
w = [pm*ones(pe, 1); zeros(se - pe, 1); sm*ones(L - se, 1)];
W = diag(w);

a = (Q'*W^2*Q)\(Q'*W^2*d);

coef = [flipud(a(2:end))/2; a(1); a(2:end)/2];

H = fft(coef, 2*L);
figure(1); plot(1:length(H(1:L)), abs(H(1:L)), 1:length(H(1:L)), d)
% pause;
saveas(figure(1), strcat('img_report_lp',"_", num2str(ws),"_",num2str(pm), "_", num2str(sm),'.png'))