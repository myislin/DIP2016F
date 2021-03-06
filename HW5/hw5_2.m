clear;

img = imread('input2.bmp');
r = img(:,:,1);
g = img(:,:,2);
b = img(:,:,3);

[A H V D] = dwt2(im2double(img),'haar');

% figure
% imshow([A H;V D],[]);

S = sqrt(H.^2 + V.^2);
gS = rgb2gray(S);
bS = edge(gS,'canny');
% figure
% subplot(121)
% imshow(gS,[]);
% subplot(122)
% imshow(bS,[]);

L = imresize(bS,2);

r(L) = 255; g(L) = 0; b(L) = 0;

sImg = cat(3,r,g);
sImg = cat(3,sImg,b);

% figure
% subplot(121);
% imshow(img);
% title('Original Image');
% subplot(122);
% imshow(sImg);
% title('Segmentated Image');

imwrite(sImg,'output2.bmp');
