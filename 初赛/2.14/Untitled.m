%C是原始个数，比如第二行第一列就是女的餐盒选项为1的有多少个人
for i=1:2%有几个性别
for j=1:4%有几个餐盒
for k=1:4%有几个餐盒
C{i}(j,k)=U(i,j)/U(i,k);
end
end
end
for i=1:16
t=c{i}
[x,lumda]=eig(t); 
r=abs(sum(lumda)); 
n=find(r==max(r)); 
max_lumda_A(1,i)=lumda(n,n); 
max_x_A{i}=x(:,n); %特征值
max_x_A{i}=max_x_A{i}./sum(max_x_A{i})
end
for i=1:2
for j=1:4
max_x_AB(i,j)=max_x_A{i}(j,1);%特征向量，第一行是男的的各项权重，第二行是女的的各项权重
end
end