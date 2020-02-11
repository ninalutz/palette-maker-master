% Program Analyze an Image and Get color
I = imread('Kanye.jpg');
%imshow(I(:,:,3))

%% Extracts the RGB of each pixel in the  image
%r = I(:,:,1);
%g = I(:,:,2);
%b = I(:,:,3);
r = reshape(I(:,:,1),1,[]); %There should be away to easilt index throughout the matrix
g = reshape(I(:,:,2),1,[]);
b = reshape(I(:,:,3),1,[]);
numofPixels = size(r);
figure;
n = 0;
%hold on

for i = 1:numofPixels
   %Getting a weird error with my loop
   
   n = n + 1;
   disp(i)
   color_Plot = '.k';
   RGB_vec = [r(i) g(i) b(i)];
   switch max(RGB_vec) 
          
       case RGB_vec(1) %% Red
       color_Plot = '.r'
       case RGB_vec(2) %% Green
       color_Plot = '.g'
       case RGB_vec(3) %% Blue
       color_Plot = '.b'    
   end
   
   %hold on
   %figure(1);
   plot3(r(i),g(i),b(i), color_Plot); %%Plot only can do X,Y, no Z. 
   
end

% Produces R(1.....n) I want to get like point_1  = r(1) g(1) b(1)
Pixel = struct;
RGB_vector = [r g b];
Pixel.rgb = RGB_vector;
%RGB_vector(1,1,1);
%RGB_vector(:,1)


% Call it by RGB_vector(
%Call RGB value for a pixel by
%figure
%plot3(r,g,b, '.')

%% Kmesh
%kmesh;