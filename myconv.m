function[y]=myconv(x, h)
x = x(:);
h = h(:);
m = length(x);
n = length(h);
y=zeros(m+n-1,1);

for k=1:m+n-1
    for l=1:n
        if(k-l+1>0) && (k-l+1<=m)
            y(k) = y(k)+ x(k-l+1)*h(l);
        end
    end
end