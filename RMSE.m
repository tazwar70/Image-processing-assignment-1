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

%  -------- Laplacian of Gaussian ----------
log_1 = edge(noise_1,'log');
log_2 = edge(noise_2,'log');
log_3 = edge(noise_3,'log');
log_4 = edge(noise_4,'log');
log_5 = edge(noise_5,'log');

% -------- Canny ----------
% Edge Detection
canny_1 = edge(noise_1,'Canny');
canny_2 = edge(noise_2,'Canny');
canny_3 = edge(noise_3,'Canny');
canny_4 = edge(noise_4,'Canny');
canny_5 = edge(noise_5,'Canny');

% ------- MSE -------
% Reference Image, no noise with canny edge detection with threshold 0.1
% and sigma 1
reference = edge(img,'Canny',0.1,1);
[R C] = size(reference);

noisy_img = canny_5;

se_img = (double(reference) - double(noisy_img)) .^ 2;
mse = sum(sum(se_img)) / (R * C);
rmse = sqrt(mse)