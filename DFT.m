function fourierSignal = DFT(signal)
%fourierSignal returns the fourier transform of a given signal

if size(signal,1)>1 %just to follow the fft convention
    signal=signal.'; 
end

N = size(signal,2);
u = 0:N-1;
xu=conv2(u,u');


fourierSignal =((exp((-2*pi*1j*xu)/N))*signal.').';

if size(signal,1)>1 %just to follow the fft convention
    fourierSignal=fourierSignal.';
end

end
