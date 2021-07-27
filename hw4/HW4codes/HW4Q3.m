%%
clc; cla; clf; clear all; close all; % Initial Clean-up for multiple tries
iptsetpref('ImshowBorder', 'tight');format compact;    % Set preferences
%%
x = (0:1/250:1-1/250)';
for i = 1:10
    coef = (rand(10,1)-0.5)*2;
    Xe(:,i) = sin(x*2*pi*(1:10))*coef;
end

X = Xe+(rand(length(x),3)-0.5)*2*rand(3,10);

N = X(2:end,:)-X(1:end-1,:);
[psi, e] = eig(N'*N, X'*X);
phi = X*psi;
%%
Y = phi(:,1:1)*(phi(:,1:1)'*X);
figure() ;
for i = 1:10
subplot(5,2,i);plot(x,Y(:,i));hold on;plot(x,Xe(:,i));hold on;plot(x,X(:,i));
legend('filtered data','original data','noisy data');
end
sgtitle(strcat("D= ",num2str(1)));

%%
Y = phi(:,1:2)*(phi(:,1:2)'*X);
figure() ;
for i = 1:10
subplot(5,2,i);plot(x,Y(:,i));hold on;plot(x,Xe(:,i));hold on;plot(x,X(:,i));
legend('filtered data','original data','noisy data');
end
sgtitle(strcat("D= ",num2str(2)));

%%
Y = phi(:,1:3)*(phi(:,1:3)'*X);
figure() ;
for i = 1:10
subplot(5,2,i);plot(x,Y(:,i));hold on;plot(x,Xe(:,i));hold on;plot(x,X(:,i));
legend('filtered data','original data','noisy data');
end
sgtitle(strcat("D= ",num2str(3)));

%%
Y = phi(:,1:4)*(phi(:,1:4)'*X);
figure() ;
for i = 1:10
subplot(5,2,i);plot(x,Y(:,i));hold on;plot(x,Xe(:,i));hold on;plot(x,X(:,i));
legend('filtered data','original data','noisy data');
end
sgtitle(strcat("D= ",num2str(4)));

%%
Y = phi(:,1:5)*(phi(:,1:5)'*X);
figure() ;
for i = 1:10
subplot(5,2,i);plot(x,Y(:,i));hold on;plot(x,Xe(:,i));hold on;plot(x,X(:,i));
legend('filtered data','original data','noisy data');
end
sgtitle(strcat("D= ",num2str(5)));

%%
Y = phi(:,1:6)*(phi(:,1:6)'*X);
figure() ;
for i = 1:10
subplot(5,2,i);plot(x,Y(:,i));hold on;plot(x,Xe(:,i));hold on;plot(x,X(:,i));
legend('filtered data','original data','noisy data');
end
sgtitle(strcat("D= ",num2str(6)));
%%
Y = phi(:,1:7)*(phi(:,1:7)'*X);
figure() ;
for i = 1:10
subplot(5,2,i);plot(x,Y(:,i));hold on;plot(x,Xe(:,i));hold on;plot(x,X(:,i));
legend('filtered data','original data','noisy data');
end
sgtitle(strcat("D= ",num2str(7)));

%%
Y = phi(:,1:8)*(phi(:,1:8)'*X);
figure() ;
for i = 1:10
subplot(5,2,i);plot(x,Y(:,i));hold on;plot(x,Xe(:,i));hold on;plot(x,X(:,i));
legend('filtered data','original data','noisy data');
end
sgtitle(strcat("D= ",num2str(8)));

%%
Y = phi(:,1:9)*(phi(:,1:9)'*X);
figure() ;
for i = 1:10
subplot(5,2,i);plot(x,Y(:,i));hold on;plot(x,Xe(:,i));hold on;plot(x,X(:,i));
legend('filtered data','original data','noisy data');
end
sgtitle(strcat("D= ",num2str(9)));

%%
Y = phi(:,1:10)*(phi(:,1:10)'*X);
figure() ;
for i = 1:10
subplot(5,2,i);plot(x,Y(:,i));hold on;plot(x,Xe(:,i));hold on;plot(x,X(:,i));
legend('filtered data','original data','noisy data');
end
sgtitle(strcat("D= ",num2str(10)));
