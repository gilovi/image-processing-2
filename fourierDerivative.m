function magnitude = fourierDerivative(inImage)
%fourierDerivative returns the input image's derivetive using fourier space
height = size(inImage,1);
width = size(inImage,2);

u = repmat( [0:ceil(width/2)-1, -fliplr(1:floor(width/2))], [height,1]); %setting the freqs to be 0,..n/2,-n/2...1
v = repmat( [0:ceil(height/2)-1, -fliplr(1:floor(height/2))]', [1,width]);

fourierIm = DFT2(inImage);
x_der = 2 * pi * 1i /(length(u)) * IDFT2(fourierIm.*u);
y_der = 2 * pi * 1i /(length(v)) * IDFT2(fourierIm.*v);

magnitude = sqrt(x_der.^2 + y_der.^2);
imshow(magnitude);

end