function y=myentropy(x)

v=x(:);
vlen=max(v)-min(v)+1;
v=v-min(v)+1;

P=zeros(1,vlen);

for i=1:length(v)
  P(v(i))=P(v(i))+1;
end

y=0;

for i=1:length(P)
  if P(i)~=0
    p=P(i)/length(v);
    y=y-p*log2(p);
  end
end
