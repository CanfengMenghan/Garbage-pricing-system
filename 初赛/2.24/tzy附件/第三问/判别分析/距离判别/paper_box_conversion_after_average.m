for i=1:240
if x(i,1)<3.5
y(i,1)=1;
end
if x(i,1)>=3.5 & x(i,1)<6.5
y(i,1)=2;
end
if x(i,1)>=6.5 & x(i,1)<9.5
y(i,1)=3;
end
if x(i,1)>9.5
y(i,1)=4;
end
end