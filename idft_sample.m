function [f] = idft_sample(F)
N=length(F); %信号の長さ 
f=zeros(1,N); %スペクトルの初期化
%IDFTの実装
for n=0:N-1
    for k=0:N-1
        f(n+1)=f(n+1)+F(k+1)* exp(2i*pi/N*k*n);
    end
    f(n+1)=f(n+1)/N;
end
f = real(f);