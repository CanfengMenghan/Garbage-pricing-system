xmax=max(x);
statistics=zeros(xmax(1,1),xmax(1,2));
[m,n]=size(x);
for i=1:m
    temp=x(i,:);
    p=temp(1,1);
    q=temp(1,2);
    statistics(p,q)=statistics(p,q)+1;
end
weight=ones(xmax(1,1),xmax(1,2));
temp=statistics';
temp=sum(temp);
temp=temp';
weight=weight.*temp;
weight=statistics./weight;
weight_total=sum(weight);
weight_total=sum(weight_total);
weight_total=weight_total*ones(xmax(1,1),xmax(1,2));
weight_total=weight./weight_total;

