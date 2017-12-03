function [image] =  nn_int(r_image, scale_factor)

% ------- Nearest-Neighbour Interpolation Function -------
% Created by Harrison Cattell, 2017
%
% Description
% -----------
%   Self-made implementation of the nearest-neighbour 
%   interpolation algorithm 
% 
%   input parameters are: 
%   Image
%           Image to be affected by algorithm
%
%   Scale factor
%           The number by which the image will be scaled
% -------------------------------------------------------------------------

% -------------------------------------------------------------------------
%
%
% Convert image from colour to grayscale
gray_image = rgb2gray(r_image);

% Initalise matrix dimensions
[col, row] = size(gray_image);

% Initalising dimensions of scaled matrix
row_scale = row*scale_factor;
col_scale = col*scale_factor;

% Initalise matrix to hold scaled image
scaled_image = uint8(zeros([col_scale row_scale]));

% Assigns scaled matrix values from orignal image
for r = 1:row_scale
   for c = 1:col_scale
       
       a = ceil(r/scale_factor); %Dividing row value by scale factor
       b = ceil(c/scale_factor); %Dividing column value by scale factor
       
       scaled_image(c,r) = gray_image(b,a);
       
   end
end

% Returns scaled image
image = scaled_image;

disp('Interpolation Completed!');
% -------------------------------------------------------------------------



