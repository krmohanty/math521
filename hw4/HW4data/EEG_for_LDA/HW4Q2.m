k = 1;
for i = 2:3
    for j = 0:9
        data(:,k) = reshape(load(sprintf('class-%d_seq-%d', i,j)),1040*19,1);
        k = k+1;
    end
end

m1 = sum(data(:,1:10),2)/10;
m2 = sum(data(:,11:20),2)/10;

M = data'*(m1-m2);
Sb = M*(M');

M = data'*[data(:,1:10)-m1, data(:,11:20)-m2];
Sw = M*(M');

[V,D] = eig(Sb,Sw);

w = data*V(:,end);

plot(data(:,1:10)'*w,ones(10,1),'r*');
hold on;
plot(data(:,11:20)'*w,ones(10,1),'ko');
