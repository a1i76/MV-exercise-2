clc;
clear;
close all;
img=zeros(400, 400);
cx=input("center x");
cy=input("center y");
r=input("radios");
for i=1:400 
    for j=1:400
        if (i-cx)*(i-cx)+(j-cy)*(j-cy) <= r*r
        img(i, j)=255;
        end
    end
end
img=uint8(img);
imshow(img);