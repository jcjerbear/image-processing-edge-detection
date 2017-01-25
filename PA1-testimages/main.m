%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% File Name: main.m
% Author: Jerry Chienyu Chen
% Environment: Matlab R2016b (may works fine with previous Matlab versions)
% Usage: In Matlab Command Window, type 'main'.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% QUESTION 01
% Write your own code to linearly stretch the gray scale on "dark.tif" 
% so that the image will have a better contrast than in the original image.
% Try histogram equalization for the same image.

% read image
dark = imread('dark.tif');

% write your own code to linearly stretch the gray scale on "dark.tif"
dark1 = imadjust(dark,[0.0,0.6],[0.0,1.0]);

% adjust the contrast using histogram equalization
dark2 = histeq(dark);

% show image
figure(1)
% show the histogram and image of dark
subplot(3,2,1)
imshow(dark)
title('original')
subplot(3,2,2)
imhist(dark)
% show the histogram and image of dark1
subplot(3,2,3)
imshow(dark1)
title('linearly stretched')
subplot(3,2,4)
imhist(dark1)
% show the histogram and image of dark2
subplot(3,2,5)
imshow(dark2)
title('histeq')
subplot(3,2,6)
imhist(dark2)

% save images to file
imwrite(dark1, 'dark_1.bmp', 'bmp');
imwrite(dark2, 'dark_2.bmp', 'bmp');

% QUESTION 02
% Given images with random Gaussian noises ("trees_var002.tif", 
% "trees_var010.tif", "trees_var025.tif") and salt-and-pepper noises 
% ("trees_salt004.tif", "trees_salt020.tif", "trees_salt050.tif"), create 
% various sizes of smoothing filters and apply them for several iterations 
% to generate smoothed images. Compare the result with the median filtering
% (several iterations) provided by MATLAB.

% read images
trees_var002 = imread('trees_var002.tif');
trees_var010 = imread('trees_var010.tif');
trees_var025 = imread('trees_var025.tif');
trees_salt004 = imread('trees_salt004.tif');
trees_salt020 = imread('trees_salt020.tif');
trees_salt050 = imread('trees_salt050.tif');

% apply personal smoothing filters on the images
trees_var002_1 = trees_var002;
trees_var010_1 = trees_var010;
trees_var025_1 = trees_var025;
trees_salt004_1 = trees_salt004;
trees_salt020_1 = trees_salt020;
trees_salt050_1 = trees_salt050;

% use a median filter to filter out the noise
trees_var002_2 = medfilt2(trees_var002);
trees_var010_2 = medfilt2(trees_var010);
trees_var025_2 = medfilt2(trees_var025);
trees_salt004_2 = medfilt2(trees_salt004);
trees_salt020_2 = medfilt2(trees_salt020);
trees_salt050_2 = medfilt2(trees_salt050);

% show image
figure(2)
% random Gaussian noises(trees_var) images
% show the original trees_var002 image and the two being processed 
subplot(3,3,1)
imshow(trees_var002)
title('original')
subplot(3,3,2)
imshow(trees_var002_1)
title('smoothing filter')
subplot(3,3,3)
imshow(trees_var002_2)
title('median filter')
% show the original trees_var0010 image and the two being processed 
subplot(3,3,4)
imshow(trees_var010)
subplot(3,3,5)
imshow(trees_var010_1)
subplot(3,3,6)
imshow(trees_var010_2)
% show the original trees_var025 image and the two being processed
subplot(3,3,7)
imshow(trees_var025)
subplot(3,3,8)
imshow(trees_var025_1)
subplot(3,3,9)
imshow(trees_var025_2)

figure(3)
% salt-and-pepper noises(trees_salt) images
% show the original trees_salt004 image and the two being processed
subplot(3,3,1)
imshow(trees_salt004)
title('original')
subplot(3,3,2)
imshow(trees_salt004_1)
title('smoothing filter')
subplot(3,3,3)
imshow(trees_salt004_2)
title('median filter')
% show the original trees_salt020 image and the two being processed
subplot(3,3,4)
imshow(trees_salt020)
subplot(3,3,5)
imshow(trees_salt020_1)
subplot(3,3,6)
imshow(trees_salt020_2)
% show the original trees_salt050 image and the two being processed
subplot(3,3,7)
imshow(trees_salt050)
subplot(3,3,8)
imshow(trees_salt050_1)
subplot(3,3,9)
imshow(trees_salt050_2)

% save images to file
imwrite(trees_var002_1, 'trees_var002_1.bmp', 'bmp');
imwrite(trees_var002_2, 'trees_var002_2.bmp', 'bmp');
imwrite(trees_var010_1, 'trees_var010_1.bmp', 'bmp');
imwrite(trees_var010_2, 'trees_var010_2.bmp', 'bmp');
imwrite(trees_var025_1, 'trees_var025_1.bmp', 'bmp');
imwrite(trees_var025_2, 'trees_var025_2.bmp', 'bmp');
imwrite(trees_salt004_1, 'trees_salt004_1.bmp', 'bmp');
imwrite(trees_salt004_2, 'trees_salt004_2.bmp', 'bmp');
imwrite(trees_salt020_1, 'trees_salt020_1.bmp', 'bmp');
imwrite(trees_salt020_2, 'trees_salt020_2.bmp', 'bmp');
imwrite(trees_salt050_1, 'trees_salt050_1.bmp', 'bmp');
imwrite(trees_salt050_2, 'trees_salt050_2.bmp', 'bmp');

% QUESTION 03
% Try various filters to Sharpen color images, e.g., "peppers.png" and 
% "flower-glass.tif". Compare the results between sharpening on all RGBs 
% and on luminance alone.



% QUESTION 04
% Edge detection. Try at least three different edge operators on one of 
% the noisy images and one of the smoothed images. Compare the results. 
% Write your own code to implement the "Canny edge operator" as outlined 
% in the Class Notes to generate good thin edges.







