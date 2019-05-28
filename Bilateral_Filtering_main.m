%% main

close all;
clc;

image = double(imread('150.png'));

figure(1);
imshow(uint8(image));
title('Original Image', 'fontsize', 14);

image = image/255;

window_width = 5;
sigma_r = 30;
sigma_d = 1;

image = bilateral_filtering(image, window_width, sigma_r, sigma_d);

figure(2);
imshow(image);
title('Bilateral Filtering Result', 'fontsize', 14);






        
