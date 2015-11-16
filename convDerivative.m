function magnitude = convDerivative(inImage)
%convDerivative returns the input image's derivetive using convulution

D = [1 0 -1];
x_deriv = conv2(inImage,D,'same');
y_deriv = conv2(inImage,D','same');

magnitude = sqrt(x_deriv.^2+y_deriv.^2);

end

