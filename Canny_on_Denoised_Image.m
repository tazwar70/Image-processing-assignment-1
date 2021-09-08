% ---- Reading Image -----
img = imread('lena.bmp');
% ---- Adding Noise ----
noisy_img = imnoise(img,'gaussian');
% ---- Denoise Image ----
denoised_img = wiener2(noisy_img);
% denoised_img = wdenoise(double(noisy_img));
% ---- Canny Edge Detection ----
canny_raw_img = edge(img,'Canny');
canny_noisy_img = edge(noisy_img,'Canny');
canny_denoised_img = edge(denoised_img,'Canny');
% ---- Image Comparison ----
subplot(2,3,1),imshow(img),title('Raw Image')
subplot(2,3,2),imshow(noisy_img),title('Noisy Image')
subplot(2,3,3),imshow(denoised_img),title('Denoised Image')
subplot(2,3,4),imshow(canny_raw_img),title('Canny on Raw Image')
subplot(2,3,5),imshow(canny_noisy_img),title('Canny on Noisy Image')
subplot(2,3,6),imshow(canny_denoised_img),title('Canny on Denoised Image')