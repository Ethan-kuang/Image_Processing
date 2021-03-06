clear all; 
close all

image = imread('indeks1.bmp');
result = imread('indeksWynik1.bmp');

[XX, YY] = size(image);
L = 1; 

tabSkl= zeros(1,256);

for x = 2:XX-1
   for y = 2:YY-1
      if image(x, y) ~= 0
          sasiedzi = [image(x-1,y-1), image(x-1,y), ...
              image(x-1,y+1), image(x,y-1)];
          suma = sum(sasiedzi); 
          if suma == 0
              tabSkl(L) = L;
              image(x, y) = L;
              L = L + 1;
          elseif suma > 0
              sasiedzi = nonzeros(sasiedzi);
              min_ = min(sasiedzi);
              max_ = max(sasiedzi);
              image(x, y) = min_;
              tabSkl(max_) = min_;
          end
      end
   end
end

figure(1)
subplot(1, 3, 1)
imshow(image, [])
title('Early indexation')

subplot(1, 3, 2)
imshow(result, [])
title('Correct')

for x = 2:XX-1
   for y = 2:YY-1
       if image(x, y) ~= 0
          image(x, y) = tabSkl(image(x, y)); 
       end
   end
end

subplot(1, 3, 3)
imshow(image, [])
title('Correct indexation')
