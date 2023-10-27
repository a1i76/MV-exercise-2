clc; clear; close all;
flag = zeros(300, 500, 3); % Initializing the matrix
% green
flag(1:100,:,1) = 29/255;
flag(1:100,:,2) = 160/255;
flag(1:100,:,3) = 62/255;
% white
flag(101:200,:,1) = 255/255;
flag(101:200,:,2) = 255/255;
flag(101:200,:,3) = 255/255;
% red
flag(201:300,:,1) = 219/255;
flag(201:300,:,2) = 0/255;
flag(201:300,:,3) = 0/255;

imshow(flag);