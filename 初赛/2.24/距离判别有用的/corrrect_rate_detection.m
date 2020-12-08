[m,n]=size(x);
c=0;
for i=1:m
if x(i,1)==x(i,2)
c=c+1;
end
end
ratio=c/m;
c
ratio