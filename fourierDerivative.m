function magnitude = fourierDerivative(inImage)
%fourierDerivative returns the input image's derivetive using fourier space
height = size(inImage,1);
width = size(inImage,2);

u = [0:ceil(width/2)-1, -fliplr(1:floor(width/2))]; %setting the freqs to be 0,..n/2,-n/2...1
v = [0:ceil(height/2)-1, -fliplr(1:floor(height/2))];
uv=conv2(u,v');

fourierIm = DFT2(inImage);
fourier_der = fourierIm.*uv;
magnitude =(-4*pi^2/(length(u)*length(v)))* IDFT2(fourier_der);

end

