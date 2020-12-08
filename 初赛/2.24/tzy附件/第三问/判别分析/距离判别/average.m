x_=[];
y_=[];
a=0;
b=0;
for p=1:2
for q=1:5
for r=1:4
for s=1:6
for i=1:1078
if x(i,:)==[i p q r s]
a=a+y(i,:);
b=b+1;
end
end
temp=[p q r s];
x_=[x_;temp];
temp=a/b;
y_=[y_;temp];
a=0;
b=0;
end
end
end
end