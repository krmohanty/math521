x = (0:1/250:1-1/250)';
for i = 1:10
    coef = (rand(10,1)-0.5)*2;
    Xe(:,i) = sin(x*2*pi*(1:10))*coef;
end

X = Xe+(rand(length(x),3)-0.5)*2*rand(3,10);

N = X(2:end,:)-X(1:end-1,:);
[psi, e] = eig(N'*N, X'*X);
phi = X*psi;
Y = phi(:,1:7)*(phi(:,1:7)'*X);
for i = 1:10
subplot(5,2,i);plot(x,Y(:,i));hold on;plot(x,Xe(:,i))
end

