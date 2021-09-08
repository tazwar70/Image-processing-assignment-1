% Reading Image
img = imread('lena.bmp');

% Canny Edge Detection over a range of thresholds
z=0;y=0;
for x = [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 0.99 0.999]
    z = z+1;
    subplot(3,4,z),imshow(edge(img,'Canny',x)),title("Canny - Threshold = " + num2str(x))
end