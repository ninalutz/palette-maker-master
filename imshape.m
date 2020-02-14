%X = imread('yoo2.jpg');
% Resizes images to a smaller size if dimensinos or resolution is too high

function resized = imshape(image)
    resized = imread(image);
    x = size(resized,1); y = size(resized,2);
    dims = [x,y]/sqrt(3);
    resized = imresize(resized,dims);
    %imshow(resized);
end