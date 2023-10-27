clc;
clear;
close all;
img=zeros(400, 400);

p1=[50,70];
p2=[240,70];
p3=[240,385];

% give every pair of points to de drawLineFx
img = drawLineFx(p1,p2, img);
img = drawLineFx(p1,p3, img);
img = drawLineFx(p2,p3, img);

img=uint8(img);
imshow(img);

% drawLine function
function[img] = drawLineFx(pa, pb, img)
% setting x and y of two points
x1=pa(1);
y1=pa(2);
x2=pb(1);
y2=pb(2);
% x=x0
if x2==x1
    for y=y1:y2
        img(y,x1)=255;
    end
% y=y0
elseif y2==y1
    for i=x1:x2
        img(y1,i)=255;
    end
else
% if(x2~=x1&&y2~=y1)
% calculate line tilt
tilt=(y2-y1)/(x2-x1);
if x1<x2 
    d=1;
else
    d=-1;
end
    for x=x1:d:x2 
    % y-y0 = m(x-x0) => y= m(x-x0)+y0
    % find y for every x
    yx=round(tilt*(x-x1)+y1);
    img(yx,x)=255;
    end

end
end

