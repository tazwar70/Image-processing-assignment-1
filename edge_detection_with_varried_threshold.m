% Edge Detection Methods Comparison
% Reading the image
img = imread('lena.bmp');
% variance levels,
var_v1 = 0.1;
var_v2 = 0.2;
var_v3 = 0.3;
var_v4 = 0.4;
var_v5 = 0.5;
% Sobel
subplot(4,5,1), imshow(edge(img,'Sobel',var_v1)), title('Sobel - threshold = 0.1')
subplot(4,5,2), imshow(edge(img,'Sobel',var_v2)), title('Sobel - threshold = 0.2')
subplot(4,5,3), imshow(edge(img,'Sobel',var_v3)), title('Sobel - threshold = 0.3')
subplot(4,5,4), imshow(edge(img,'Sobel',var_v4)), title('Sobel - threshold = 0.4')
subplot(4,5,5), imshow(edge(img,'Sobel',var_v5)), title('Sobel - threshold = 0.5')
% Prewitt
subplot(4,5,6), imshow(edge(img,'Prewitt',var_v1)), title('Prewitt - threshold = 0.1')
subplot(4,5,7), imshow(edge(img,'Prewitt',var_v2)), title('Prewitt - threshold = 0.2')
subplot(4,5,8), imshow(edge(img,'Prewitt',var_v3)), title('Prewitt - threshold = 0.3')
subplot(4,5,9), imshow(edge(img,'Prewitt',var_v4)), title('Prewitt - threshold = 0.4')
subplot(4,5,10), imshow(edge(img,'Prewitt',var_v5)), title('Prewitt - threshold = 0.5')
% Laplacian of Gaussian
subplot(4,5,11), imshow(edge(img,'log',var_v1)), title('LoG - threshold = 0.1')
subplot(4,5,12), imshow(edge(img,'log',var_v2)), title('LoG - threshold = 0.2')
subplot(4,5,13), imshow(edge(img,'log',var_v3)), title('LoG - threshold = 0.3')
subplot(4,5,14), imshow(edge(img,'log',var_v4)), title('LoG - threshold = 0.4')
subplot(4,5,15), imshow(edge(img,'log',var_v5)), title('LoG - threshold = 0.5')
% Canny
subplot(4,5,16), imshow(edge(img,'Canny',var_v1)), title('Canny - threshold = 0.1')
subplot(4,5,17), imshow(edge(img,'Canny',var_v2)), title('Canny - threshold = 0.2')
subplot(4,5,18), imshow(edge(img,'Canny',var_v3)), title('Canny - threshold = 0.3')
subplot(4,5,19), imshow(edge(img,'Canny',var_v4)), title('Canny - threshold = 0.4')
subplot(4,5,20), imshow(edge(img,'Canny',var_v5)), title('Canny - threshold = 0.5')
truesize