%C��ԭʼ����������ڶ��е�һ�о���Ů�Ĳͺ�ѡ��Ϊ1���ж��ٸ���
for i=1:2%�м����Ա�
for j=1:4%�м����ͺ�
for k=1:4%�м����ͺ�
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
max_x_A{i}=x(:,n); %����ֵ
max_x_A{i}=max_x_A{i}./sum(max_x_A{i})
end
for i=1:2
for j=1:4
max_x_AB(i,j)=max_x_A{i}(j,1);%������������һ�����еĵĸ���Ȩ�أ��ڶ�����Ů�ĵĸ���Ȩ��
end
end