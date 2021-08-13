function result=add_rectangle(data,pointAll,windSize,rgb,lineSize)
%% functions: add a rectangle outside the image
%  data: the input image  
%  pointAll: the start point of the rectangle in the data.   e.g. pointAll = [a,b]
%  windSize: the width and height of the reactangle    e.g. windSize = [a,b]
%  rgb: the color of the rectangle.      e.g: rgb = [255 0 0]
%  lineSize: the width of the line in rectangle    e.g. lineSize = 1/2/3.                                          
windSize(1,1)=windSize(1,1);  
windSize(1,2) = windSize(1,2);  
if windSize(1,1) > size(data,1) ||windSize(1,2) > size(data,2)                                      % 说明窗口太大，图像太小，没必要获取  
    disp('the window size is larger then image...');  
    return;  
end  
  
result = data;  
if size(data,3) == 3  
    for k=1:3  
        for i=1:size(pointAll,1)   %画边框顺序为：上右下左的原则  
            result(pointAll(i,1),pointAll(i,2):pointAll(i,2)+windSize(i,1),k) = rgb(1,k);     
            result(pointAll(i,1):pointAll(i,1)+windSize(i,2),pointAll(i,2)+windSize(i,1),k) = rgb(1,k);  
            result(pointAll(i,1)+windSize(i,2),pointAll(i,2):pointAll(i,2)+windSize(i,1),k) = rgb(1,k);    
            result(pointAll(i,1):pointAll(i,1)+windSize(i,2),pointAll(i,2),k) = rgb(1,k);    
            if lineSize == 2 || lineSize == 3  
                result(pointAll(i,1)+1,pointAll(i,2):pointAll(i,2)+windSize(i,1),k) = rgb(1,k);    
                result(pointAll(i,1):pointAll(i,1)+windSize(i,2),pointAll(i,2)+windSize(i,1)-1,k) = rgb(1,k);  
                result(pointAll(i,1)+windSize(i,2)-1,pointAll(i,2):pointAll(i,2)+windSize(i,1),k) = rgb(1,k);  
                result(pointAll(i,1):pointAll(i,1)+windSize(i,2),pointAll(i,2)-1,k) = rgb(1,k);  
                if lineSize == 3  
                    result(pointAll(i,1)-1,pointAll(i,2):pointAll(i,2)+windSize(i,1),k) = rgb(1,k);     
                    result(pointAll(i,1):pointAll(i,1)+windSize(i,2),pointAll(i,2)+windSize(i,1)+1,k) = rgb(1,k);  
                    result(pointAll(i,1)+windSize(i,2)+1,pointAll(i,2):pointAll(i,2)+windSize(i,1),k) = rgb(1,k);  
                    result(pointAll(i,1):pointAll(i,1)+windSize(i,2),pointAll(i,2)+1,k) = rgb(1,k);  
                end  
            end  
        end  
    end  
end  
end  