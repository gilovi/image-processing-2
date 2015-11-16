function image = IDFT2(fourierImage)
%IDFT2 returns the 2D inverse fourier transform of a given fourierImage
    image = IDFT(IDFT(fourierImage).').';

end

