img = imread('lena.bmp');
subplot(1,4,1),imshow(edge(img,'Canny')),title('Canny')
subplot(1,4,2),imshow(edge(img,'Sobel')),title('Sobel')
subplot(1,4,3),imshow(edge(img,'Prewitt')),title('Prewitt')
subplot(1,4,4),imshow(edge(img,'log')),title('LoG')
