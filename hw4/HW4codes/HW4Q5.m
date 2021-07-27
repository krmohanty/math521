A = double(rgb2gray(imread('CTimage.jpg')));
avFilter  = ones(3)/9;
lapFilter = [0 -1 0; -1 4 -1; 0 -1 0];

A1 = conv2(A, avFilter,'same');
A2 = conv2(A, lapFilter,'same');
A3 = A1+A2;

subplot(2,2,1);
imshow(uint8(A));
subplot(2,2,2);
imshow(uint8(A1));
subplot(2,2,3);
imshow(uint8(A2));
subplot(2,2,4);
imshow(uint8(A3));
