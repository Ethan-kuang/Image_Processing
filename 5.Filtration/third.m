clear all; 
close all;

moon = imread('moon.bmp');

M = [0 1 0; 1 -4 1; 0 1 0]; 
M = M / 9;

moon_result = conv2(double(moon), double(M), 'same');

moon_result_scale = 128 + moon_result; 
moon_result_abs = abs(moon_result); 

figure(1);
subplot(1, 3, 1);
imshow(moon, []);
title('Orginal');

subplot(1, 3, 2);
imshow(moon_result_scale, []);
title('Scaling');

subplot(1, 3, 3);
imshow(moon_result_abs, []);
title('Absolute value');

laplacian = fspecial('laplacian', 0.5);
result = uint8(conv2(double(moon), double(laplacian), 'same'));

figure(2);
subplot(1, 4, 1);
imshow(moon, []);
title('Oryginal');

subplot(1, 4, 2);
imshow(result, []);
title('Filtracja');

subplot(1, 4, 3);
imshow(imabsdiff(result, moon), []);
title('Sharping');

subplot(1, 4, 4);
imshow(imabsdiff(moon, imabsdiff(result, moon)), []);
title('Difference');


dipxe = imread('dipxe.jpg');
filter = fspecial('gaussian', 5);

figure(3);
subplot(1, 5, 1);
imshow(dipxe, []);
title('Orginal');

result = uint8(conv2(double(dipxe), filter, 'same'));
subplot(1, 5, 2);
imshow(result, []);

subplot(1, 5, 3);
imshow(dipxe - result, []);
title('Mask');

subplot(1, 5, 4);
k = 1; 
imshow(dipxe * (k+1) - k * result, []);
title('Unsharp masking');

subplot(1, 5, 5);
k = 4.5;
imshow(dipxe * (k+1) - k * result, []);
title('Highboost filtring');