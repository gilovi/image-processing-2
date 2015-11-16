function fourierImage = DFT2(image)
%   DFT2 returns the 2D fourier transform of a given image

    fourierImage = DFT(DFT(image).').';

end
