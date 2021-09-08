% -------------------------
% Reading Image
img = imread('lena.bmp');

% Adding Noise
noise_1 = imnoise(img,'gaussian',0,0.01);
noise_2 = imnoise(img,'gaussian',0,0.05);
noise_3 = imnoise(img,'gaussian',0,0.1);
noise_4 = imnoise(img,'gaussian',0,0.5);
noise_5 = imnoise(img,'gaussian',0,1);

% ---------- Edge Detection ---------------
% ---------- Sobel ---------------
sobel_1 = edge(noise_1);
sobel_2 = edge(noise_2);
sobel_3 = edge(noise_3);
sobel_4 = edge(noise_4);
sobel_5 = edge(noise_5);

% -------------- Prewitt ---------------
prewitt_1 = edge(noise_1,'Prewitt');
prewitt_2 = edge(noise_2,'Prewitt');
prewitt_3 = edge(noise_3,'Prewitt');
prewitt_4 = edge(noise_4,'Prewitt');
prewitt_5 = edge(noise_5,'Prewitt');

%  -------- Laplacian of Gaissian ----------
log_1 = edge(noise_1,'log');
log_2 = edge(noise_2,'log');
log_3 = edge(noise_3,'log');
log_4 = edge(noise_4,'log');
log_5 = edge(noise_5,'log');

% -------- Canny ----------
canny_1 = edge(noise_1,'Canny');
canny_2 = edge(noise_2,'Canny');
canny_3 = edge(noise_3,'Canny');
canny_4 = edge(noise_4,'Canny');
canny_5 = edge(noise_5,'Canny');

% ------- Plot -------
subplot(4,5,1),imshow(sobel_1),title('Sobel - var = 0.01'),xlabel('rmse = 0.2955')
subplot(4,5,2),imshow(sobel_2),title('Sobel - var = 0.05'),xlabel('rmse = 0.3186')
subplot(4,5,3),imshow(sobel_3),title('Sobel - var = 0.1'),xlabel('rmse = 0.3199')
subplot(4,5,4),imshow(sobel_4),title('Sobel - var = 0.5'),xlabel('rmse = 0.3138')
subplot(4,5,5),imshow(sobel_5),title('Sobel - var = 1'),xlabel('rmse = 0.3113')

subplot(4,5,6),imshow(prewitt_1),title('Prewitt - var = 0.01'),xlabel('rmse = 0.2956')
subplot(4,5,7),imshow(prewitt_2),title('Prewitt - var = 0.05'),xlabel('rmse = 0.3178')
subplot(4,5,8),imshow(prewitt_3),title('Prewitt - var = 0.1'),xlabel('rmse = 0.3201')
subplot(4,5,9),imshow(prewitt_4),title('Prewitt - var = 0.5'),xlabel('rmse = 0.3136')
subplot(4,5,10),imshow(prewitt_5),title('Prewitt - var = 1'),xlabel('rmse = 0.3113')

subplot(4,5,11),imshow(log_1),title('LoG - var = 0.01'),xlabel('rmse = 0.3860')
subplot(4,5,12),imshow(log_2),title('LoG - var = 0.05'),xlabel('rmse = 0.4558')
subplot(4,5,13),imshow(log_3),title('LoG - var = 0.1'),xlabel('rmse = 0.4763')
subplot(4,5,14),imshow(log_4),title('LoG - var = 0.5'),xlabel('rmse = 0.4955')
subplot(4,5,15),imshow(log_5),title('LoG - var = 1'),xlabel('rmse = 0.4976')

subplot(4,5,16),imshow(canny_1),title('Canny - var = 0.01'),xlabel('rmse = 0.4376')
subplot(4,5,17),imshow(canny_2),title('Canny - var = 0.05'),xlabel('rmse = 0.5363')
subplot(4,5,18),imshow(canny_3),title('Canny - var = 0.1'),xlabel('rmse = 0.5605')
subplot(4,5,19),imshow(canny_4),title('Canny - var = 0.5'),xlabel('rmse = 0.5863')
subplot(4,5,20),imshow(canny_5),title('Canny - var = 1'),xlabel('rmse = 0.5928')

