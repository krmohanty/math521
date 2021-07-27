A = imread('app-ndt-Chip-5.jpg');
A = imnoise( A ,'salt & pepper', .4);
imshow(A);

n = 2;
B = padarray(A, [n,n], 'symmetric', 'both');

for i = 1:size(A,1)
    for j = 1:size(A,2)
        patch = B(i:i+2*n, j:j+2*n);
        A1(i,j) = median(patch(:));
    end
end

subplot(1,2,1);imshow(A);
subplot(1,2,2);imshow(A1);
