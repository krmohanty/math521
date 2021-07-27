clc; cla; clf; clear all; close all; % Initial Clean-up for multiple tries
iptsetpref('ImshowBorder', 'tight');format compact;    % Set preferences
%%
A = imread('buffalo.png');
B = imread('buffalo.png');
%%
A = double(A);
[U,S,V] = svd(A);
%%
k=10;
A_k = U(:,1:k)*S(1:k,1:k)*V(:,1:k)';
%%
figure;
subplot(1,2,1); imshow(B);
title('Original','FontSize',18);
subplot(1,2,2); imagesc(A_k), colormap(gray)
title('A k','FontSize',18);

%%

A = [-2, -1, 1;
      0, -1, 0;
     -1, 1, 2;
      1, -1, 1];
  
%%

[U,S,V] = svd(A);

%%

R = U*S*V'

%%

U1=[0.7071 , -0.5 , 0.4082 , 0.2887; 0 , -0.5 , 0 , -0.8660; 0.7071 , 0.5 , 0.4082 , -0.2887; 0 , -0.5, 0.8165 , 0.2887];
S1=[3 , 0 , 0; 0 , 2 , 0; 0 , 0 , 1.7321;0,0,0];
V1= [-0.7071 , 0 , 0.7071; 0 , 1 , 0; 0.7071 , 0 , 0.7071];
R2 = U1*S1*V1'