% ----- Reading Image -----
img = imread('lena.bmp');
% ------ Adding Noise -----
noise_1 = imnoise(img,'gaussian',0,0.01);
noise_2 = imnoise(img,'gaussian',0,0.02);
noise_3 = imnoise(img,'gaussian',0,0.03);
noise_4 = imnoise(img,'gaussian',0,0.04);
noise_5 = imnoise(img,'gaussian',0,0.05);
% ------- Plot -------
subplot(2,5,1),imshow(noise_1),title('Raw + Noise = 0.01')
subplot(2,5,2),imshow(noise_2),title('Raw + Noise = 0.02')
subplot(2,5,3),imshow(noise_3),title('Raw + Noise = 0.03')
subplot(2,5,4),imshow(noise_4),title('Raw + Noise = 0.04')
subplot(2,5,5),imshow(noise_5),title('Raw + Noise = 0.05')
% -------- Canny ----------
subplot(2,5,6),imshow(edge(noise_1,'Canny')),title('Canny + Noise = 0.01')
subplot(2,5,7),imshow(edge(noise_2,'Canny')),title('Canny + Noise = 0.02')
subplot(2,5,8),imshow(edge(noise_3,'Canny')),title('Canny + Noise = 0.03')
subplot(2,5,9),imshow(edge(noise_4,'Canny')),title('Canny + Noise = 0.04')
subplot(2,5,10),imshow(edge(noise_5,'Canny')),title('Canny + Noise = 0.05')
