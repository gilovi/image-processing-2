function blurImage = blurInImageSpace(inImage,kernelSize)
% UNTITLED6 a function that performs image 
% blurring using convolution between the image f and a gaussian kernel g
 
S = round(kernelSize/2); % the size at the end will be (s*2)-1 (because of the convulution)
kernel = conv2(ones(S),ones(S));
kernel = kernel/sum(sum(kernel)); %normalize the kernel

blurImage = conv2(inImage,kernel,'same');

figure;
imshow(blurImage);
end

