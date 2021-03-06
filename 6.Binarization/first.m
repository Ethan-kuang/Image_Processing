close all;
clear all;

coins = imread('coins.png');

figure(1);
subplot(1, 3, 1);
imshow(coins, []);
title('Orginal');

subplot(1, 3, 2);
imhist(coins);
title('Histogram');

subplot(1, 3, 3);
threshold = 90;
im2bw(coins, threshold/255);
title('After binarization');

fig1 = imread('figura.tif');
figure(2);
subplot(1, 2, 1);
imshow(fig1, []);
title('Orginal');

subplot(1, 2, 2);
imhist(fig1);
title('Histogram');

fig2 = imread('figura2.tif');
figure(3);
subplot(1, 2, 1);
imshow(fig2, []);
title('Orginal');

subplot(1, 2, 2);
imhist(fig2);
title('Histogram');

fig3 = imread('figura3.tif');
figure(4);
subplot(1, 2, 1);
imshow(fig3, []);
title('Orginal');

subplot(1, 2, 2);
imhist(fig3);
title('Histogram');

fig4 = imread('figura4.tif');
figure(5);
subplot(1, 2, 1);
imshow(fig4, []);
title('Orginal');

subplot(1, 2, 2);
imhist(fig4);
title('Histogram');


level = graythresh(coins);
figure(6);
im2bw(coins, level);
title('Otsu');

levelKittler = clusterKittler(coins);
levelYen = entropyYen(coins);
levelOtsu = graythresh(coins);

figure(7);
subplot(2, 3, 1);
imshow(coins, []);
title('Orginal');

subplot(2, 3, 2);
imhist(coins);
title('Histogram');

subplot(2, 3, 3);
threshold = 90;
im2bw(coins, threshold/255);
title(['Own, ', num2str(threshold/255)]);

subplot(2, 3, 4);
im2bw(coins, graythresh(coins));
title(['Otsu, ', num2str(levelOtsu/255)]);

subplot(2, 3, 5);
im2bw(coins, levelKittler/255);
title(['Kittler, ', num2str(levelKittler/255)]);

subplot(2, 3, 6);
im2bw(coins, levelYen/255);
title(['Yen, ', num2str(levelYen/255)]);


coins = imread('rice.png');
levelKittler = clusterKittler(coins);
levelYen = entropyYen(coins);
levelOtsu = graythresh(coins);

figure(8);
subplot(2, 3, 1);
imshow(coins, []);
title('Oryginal');

subplot(2, 3, 2);
imhist(coins);
title('Histogram');

subplot(2, 3, 3);
threshold = 110;
im2bw(coins, threshold/255);
title(['Own, ', num2str(threshold/255)]);

subplot(2, 3, 4);
im2bw(coins, graythresh(coins));
title(['Otsu, ', num2str(levelOtsu/255)]);

subplot(2, 3, 5);
im2bw(coins, levelKittler/255);
title(['Kittler, ', num2str(levelKittler/255)]);

subplot(2, 3, 6);
im2bw(coins, levelYen/255);
title(['Yen, ', num2str(levelYen/255)]);


coins = imread('tekst.bmp');
levelKittler = clusterKittler(coins);
levelYen = entropyYen(coins);
levelOtsu = graythresh(coins);

figure(9);
subplot(2, 3, 1);
imshow(coins, []);
title('Orginal');

subplot(2, 3, 2);
imhist(coins);
title('Histogram');

subplot(2, 3, 3);
threshold = 180;
im2bw(coins, threshold/255);
title(['Own, ', num2str(threshold/255)]);

subplot(2, 3, 4);
im2bw(coins, graythresh(coins));
title(['Otsu, ', num2str(levelOtsu/255)]);

subplot(2, 3, 5);
im2bw(coins, levelKittler/255);
title(['Kittler, ', num2str(levelKittler/255)]);

subplot(2, 3, 6);
im2bw(coins, levelYen/255);
title(['Yen, ', num2str(levelYen/255)]);


coins = imread('obiekty.bmp');
levelKittler = clusterKittler(coins);
levelYen = entropyYen(coins);
levelOtsu = graythresh(coins);

figure(10);
subplot(2, 3, 1);
imshow(coins, []);
title('Oryginal');

subplot(2, 3, 2);
imhist(coins);
title('Histogram');

subplot(2, 3, 3);
threshold = 180;
im2bw(coins, threshold/255);
title(['Own, ', num2str(threshold/255)]);

subplot(2, 3, 4);
im2bw(coins, graythresh(coins));
title(['Otsu, ', num2str(levelOtsu/255)]);

subplot(2, 3, 5);
im2bw(coins, levelKittler/255);
title(['Kittler, ', num2str(levelKittler/255)]);

subplot(2, 3, 6);
im2bw(coins, levelYen/255);
title(['Yen, ', num2str(levelYen/255)]);

coins = imread('katalog.bmp');
levelKittler = clusterKittler(coins);
levelYen = entropyYen(coins);
levelOtsu = graythresh(coins);

figure(11);
subplot(2, 3, 1);
imshow(coins, []);
title('Orginal');

subplot(2, 3, 2);
imhist(coins);
title('Histogram');

subplot(2, 3, 3);
threshold = 150;
im2bw(coins, threshold/255);
title(['Wlasna, ', num2str(threshold/255)]);

subplot(2, 3, 4);
im2bw(coins, graythresh(coins));
title(['Otsu, ', num2str(levelOtsu/255)]);

subplot(2, 3, 5);
im2bw(coins, levelKittler/255);
title(['Kittler, ', num2str(levelKittler/255)]);

subplot(2, 3, 6);
im2bw(coins, levelYen/255);
title(['Yen, ', num2str(levelYen/255)]);