%% Q1
clc; cla; clf; clear all; close all; % Initial Clean-up for multiple tries
iptsetpref('ImshowBorder', 'tight');format compact;    % Set preferences
%%
M = 64;
P = 64;
N = 3;
x = (0:M-1)'/M;
t = (0:P-1)/P;
%%
f = 0;
for k = 1:N
    f = f+1/N*1/k*sin(k*(x-t));
end

m = (floor(rand(M,P)*10)>0);

r = f.*m;
for i = 1:P
    for j = 1:M
        if (m(j,i)==0)
            r(j,i) = sum(f(j,:).*m(j,:))/sum(m(j,:));
        end
    end
end

% subplot(1,3,1);
% mesh(r);
r1=r;
%%
update = 1;
eps = 1e-3;
it = 0;
while (update>eps && it<50)
    
    r_old = r;
    [v, e] = eig(r*r');
    size(v)
    ev(it+1,:) = diag(e);

    D = 2;
    v = v(:,end-D:end);
    for i = 1:P
        A = (v.*m(:,i))'*(v.*m(:,i));
        b = (v.*m(:,i))'*r(:,i);
        a = A\b;
        f(:,i) = v*a;
    end

    for i = 1:P
        for j = 1:M
            if (m(j,i)==0)
                r(j,i) = f(j,i);
            end
        end
    end  
    
    update = norm(r_old-r);
    it = it+1;

%     subplot(1,3,2);
%     mesh(r);title(sprintf('iteration number %d',t))
%     subplot(1,3,3);
%     mesh(r-f);
%     pause(2);
end
it

%%
[v, e] = eig(r*r');


