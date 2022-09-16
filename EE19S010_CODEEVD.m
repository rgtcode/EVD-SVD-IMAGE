a=imread('55.jpg');%reading of the gray scale image
b=rgb2gray(a);
im=im2double(b);%converting to the double precision 
[U H]=eig(im);
for i=1:length(a);
    


    
  
