function signal = IDFT(fourierSignal)
%IDFT returns the inverse fourier transform of a given fourierSignal
[r,c]=size(fourierSignal);

if r > 1 %just to follow the ifft convention
    fourierSignal=fourierSignal.'; 
end

N = size(fourierSignal,2);
u = 0:N-1;
xu=conv2(u,u');

signal = 1/N *((exp((2*pi*1j*xu)/N))*fourierSignal.').';

if r > 1 %just to follow the ifft convention
    signal=signal.'; 
end
end

