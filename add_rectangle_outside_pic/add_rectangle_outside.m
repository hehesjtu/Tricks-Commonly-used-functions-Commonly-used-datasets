function outimg = add_rectangle_outside(img,lineSize,rgb)
    %% img: matrix, input image. outimg:output image
    %% lineSize: int e.g. 1-5
    %% rgb: vectors, colors for selected
    %   red 255 0 0 // orange 255 128 0 // yellow 255 255 0
    %  tomato red 255 99 71 // pink  255 192 203 // green 0 255 0
    %  blue 0 0 255 // light blue 0 255 255 // dark blue 25 25 112
    %  turkey blue 0 199 140  // purple 138 43 226 // brown 128 42 42
    [m,n,d] = size(img);
    outimg = zeros(m+2*lineSize,n+2*lineSize,d);
    if d ==3
        outimg(:,:,1) = rgb(1);
        outimg(:,:,2) = rgb(2);
        outimg(:,:,3) = rgb(3);
        outimg(lineSize+1:lineSize+m,lineSize+1:lineSize+n,:)=img;
    end
    if d ==1
       outimg(lineSize+1:lineSize+m,lineSize+1:lineSize+n)=img; 
    end
end

