
clear
load Digits

%% create a training ensemble and optimal basis --------------
num_images = 50;
num_subj = 10;
y = photo_size(1); x = photo_size(2);
X = double(Gallery);
Probe = double(Probe);
m = mean(X,2);
Y = X - repmat(m,1,size(X,2)); %% mean-subtraction
[U,S,V] = svd(Y,0);
d = 500;
%A = S*V'; %% expansion coefficients (projection of data onto optimal basis)
ProjMat = U(:,1:d)';

% plot the first 10 eigen-digits
figure(1),title('first 10 eigen-digits')
for i = 1:10
    subplot(2,5,i), imagesc(reshape(U(:,i),y,x)),colormap(gray),axis off
end
%% project the gallery as well as probe onto the PCA feature space
fea_Gallery_p = U(:,1:d)*S(1:d,1:d)*V(:,1:d)';
fea_Gallery = ProjMat*X;
Probe = Probe - repmat(m,1,size(Probe,2));
fea_Probe = ProjMat*Probe;
%% plot sample gallery images in feature space
figure(2),title('sample gallery images in feature space')
for i = 1:10
    subplot(2,5,i), imagesc(reshape(fea_Gallery_p(:,50*(i-1)+1),y,x)),colormap(gray),axis off
end

figure(3),title('probe images')
for i = 1:10
    subplot(2,5,i), imagesc(reshape(Probe(:,i),y,x)),colormap(gray),axis off
end

%% classify probes -----------------------------------
for i = 1:size(Probe,2)
    for j = 1:size(X,2)
        dist(i,j) = norm(fea_Probe(:,i)-fea_Gallery(:,j),2);% get distance between probe and gallery
    end
    [val,loc] = sort(dist(i,:));
    ind(i) = loc(1);
    if  ind(i) >= (i-1)*num_images + 1 && ind(i) <= num_images*i
        class(i) = 1;
    else
        class(i) = 0;
    end
end
%
% %% Question: Why doesn't this work well?
% %% choice of norm, variation in the data, number of images used in the
% %% training, etc.