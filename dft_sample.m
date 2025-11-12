function[F] = dft_sample(f)
N=length(f);
F=zeros(1,N);

% DFTの実装
for k=0:N-1
    for n=0:N-1
        F(k+1)=F(k+1)+f(n+1)*exp(-2i*pi/N*k*n);
    end
end
