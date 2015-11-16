function blurImage = blurInFourierSpace(inImage,kernelSize)
%blurInFourierSpace a function that performs image blurring with gaussian kernel in fourier space.

S = round(kernelSize/2); % the size at the end will be (s*2)-1 (because of the convulution)
kernel = conv2(ones(S),ones(S));
kernel = kernel/sum(sum(kernel)); %normalize the kernel

padedKer = zeros(size(inImage));
[r,c] = size(kernel);
xpos = (floor((size(inImage,2))/2)) + 1 - floor(r/2);
ypos = (floor((size(inImage,1))/2)) + 1 - floor(r/2);

padedKer((xpos:xpos+r-1),(ypos:ypos+c-1)) = kernel;

fourKer = DFT2(padedKer);
fourIm = DFT2(inImage);

blurImage = IDFT2(abs(fourKer).*fourIm);

figure;
imshow(blurImage);
end

