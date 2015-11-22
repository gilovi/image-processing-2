function blurImage = blurInFourierSpace(inImage,kernelSize)
%blurInFourierSpace a function that performs image blurring with gaussian kernel in fourier space.

k = conv2([1 1], [ 1 1 ]');
% using the convolution theorm to iteratively convulute the kernel:
kernel = ifft2((fft2(k, kernelSize , kernelSize)).^ (kernelSize-1));
kernel = kernel/sum(sum(kernel)); %normalize the kernel

paded_ker = zeros(size(inImage));
[r,c] = size(kernel);
xpos = (floor((size(inImage,2))/2)) + 1 - floor(r/2);
ypos = (floor((size(inImage,1))/2)) + 1 - floor(r/2);

paded_ker((ypos:ypos+r-1),(xpos:xpos+c-1)) = kernel;

four_ker = fft2(ifftshift(paded_ker));
four_Im = fft2(inImage);

blurImage = (ifft2((four_ker) .* four_Im));

figure;
imshow(blurImage);
end

