%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% This code will create the data to be used for HW3, PCA               %%
%% Written by Jen-Mei Chang @ CSULB 2/23/2010                           %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
load Number_DB2
n0 = 408; n1 = 812; n2 = 1190; n3 = 1574; n4 = 1905; n5 = 2114; n6 = 2483;
n7 = 2830; n8 = 3134; n9 = size(Nums,2);
n = [n0 n1 n2 n3 n4 n5 n6 n7 n8 n9];

%Gallery = Nums(:,1:(n(1)-1)); 
Probe = Nums(:,n(1));
for i = 2:length(n)
%    Gallery = [Gallery Nums(:,n(i-1)+1:n(i)-1)];
    Probe = [Probe Nums(:,n(i))];
end
num = 50;
Gallery = [Nums(:,3:52) Nums(:,n0+1:n0+num) Nums(:,n1+1:n1+num) Nums(:,n2+1:n2+num) ...
    Nums(:,n3+1:n3+num)  Nums(:,n4+1:n4+num) Nums(:,n5+1:n5+num) Nums(:,n6+1:n6+num) ...
    Nums(:,n7+1:n7+num) Nums(:,n8+1:n8+num)];
    
% for i = 1:100
%     subplot(10,10,i),imagesc(reshape(Gallery(:,i),32,32)),colormap(gray),axis off
% end

% for i = 1:10
%     subplot(2,5,i),imagesc(reshape(Probe(:,i),32,32)),colormap(gray),axis off
% end

% label_probe = [0:9];
% label_gallery = [];
% nn = n - [1:1:10];
% for i = 1:10
%     if i == 1
%         count = nn(i);
%     else
%         count = nn(i)-nn(i-1);
%     end
%     temp = (i-1)*ones(1,count);
%     label_gallery = [label_gallery temp];
% end
