function match = template_matching(input, template, wallpaper)
% match = template_matching(input, template) finds the template image in
% the input image, using a normalised cross-correlation algorithm between
% the input and template image. 
% The space in the input image where template is found is replaced by the
% wallpaper image. The resulting image is returned in match. 

% Author: Anna McCann
% Date:   26 November 2017

% Advanced Signal Processing - Assignment 2

% Inputs:
% input = main image within which template is to be found
% template = image that is to be found in input image
% wallpaper = covering that is to be placed over the space where template
%             is found in the input image

% Output:
% match = input image, but with space where template is found covered by
% the wallpaper image

% Algorithm - Find the template by computing the two dimensional normalised
% cross correlation coefficients between the input image and the template
% image. If the input image is I, and the template image is T of size L1,
% L2, then:

% normcorr = 
%     sum_xy( sum_xy( (I(x,y) - mean(I(u,v)))(Tdash) ) /
%     sqrt(sum_xy( I(x,y) - mean(I(u,v))^2 )(sum_xy(Tdash^2))

% if Tdash is the template image, but with the mean pixel value
% subtracted from each individual pixel. Therefore, Tdash has mean 0, which
% will be useful later

% This equation is described in:
% "Template Matching using Fast Normalised Cross Correlation", Kai
% Breichle, Uwe Hanebeck

% To compute the equation above:

% 1. Compute the numerator: sum_xy( sum_xy( (I(x,y) - mean(I(u,v)))(Tdash))
%    
%    = sum_xy(I(x,y)Tdash) - sum_xy(mean(I(u,v))Tdash)
%    = sum_xy(I(x,y)Tdash) - mean(I(u,v))sum_xy(Tdash) <-- the term
%                                                          sum_xy(Tdash) = 0, 
%                                                          because the mean
%                                                          of Tdash is 0
%    = sum_xy(I(x,y)Tdash) = the convolution of I, with a mirrored version
%                            of Tdash. This convolution can be computed by
%                            a multiplication in the frequency domain.
%                            Since Tdash is mirrored, this corresponds to
%                            the correlation of I with Tdash

% 2. Compute the denominator: sqrt(sum_xy( I(x,y) - mean(I(u,v))^2 )(sum_xy(Tdash^2))
%
%    = sum_xy(I2(x,y) - 2sum_xy(I(x,y))mean(I(u,v)) - mean(I(u,v))^2) sum_xy(Tdash^2)
%    But...
%    mean(I(u,v)^2) = (L1*L2)*(1/(L1*L2)*sum_xy(I(x,y)))^2

%    So
%    = sum_xy(I2(x,y)) - (1/(L1*L2))*(sum_xy(I(x,y)))^2 sum_xy(Tdash^2)

% ======================================================================= %


end