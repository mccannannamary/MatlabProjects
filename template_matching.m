function match = template_matching(input, template, wallpaper);
% match = template_matching(input, template) finds the template image in
% the input image, using a normalised cross-correlation algorithm between
% the input and template image. 
% The space in the input image where template is found is replaced by the
% wallpaper image. The resulting image is returned in match. 

% Author: Anna McCann
% Date:   26 November 2017

% Inputs:
% input = main image within which template is to be found
% template = image that is to be found in input image
% wallpaper = covering that is to be placed over the space where template
%             is found in the input image

% Output:
% match = input image, but with space where template is found covered by
% the wallpaper image

