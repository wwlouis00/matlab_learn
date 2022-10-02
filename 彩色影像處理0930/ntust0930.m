clc,close all,clear all
disp('Show 8-bit planes of an image')

A = imresize(imread('cameraman.tif'),0.5);
B = double(A);

subplot(3,4,1),imshow(uint8(B)) ,title('source') 
set(gcf,'name','8 binary planes of a 8-bit garyscale image')

n = size(B);

C = dec2bin(B, 8);

for plane=1:8
    clear D
    D = 255*str2num(C(:,plane));
    D = reshape(D, n(1), n(2));
    subplot(3,4,4+plane);
    imshow(D), title(['plane ' num2str(plane)])
end

set(gcf,'color','w','units','normalizee','outerposition',[0 0 1 1]);

