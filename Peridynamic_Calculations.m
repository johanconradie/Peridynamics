clc;
clear all;

display 'peridynamics'



Cell_ID = [1:1:18]

x_coords = [ 0 0.25 0.5 0.625 1]'

y_coords = [0:0.125:1.0]'

Cell_ID = [1:1:18]'


for i=1:length(Cell_ID)
    
    if(i < 9 )
        Cell_size(i) = (x_coords(3) - x_coords(2)) *(y_coords(3)-y_coords(1));
        x_centroid(i) = (x_coords(3) + x_coords(2))/2;
        
    end
    
    if( i >8 && i <17)
        Cell_size(i) = (x_coords(4)-x_coords(3))*(y_coords(2)-y_coords(1));
        x_centroid(i) = (x_coords(4) + x_coords(3))/2;
    end
    
    if(i>=17)
        Cell_size(i) = (x_coords(5)-x_coords(4))*(y_coords(5) - y_coords(1));
        x_centroid(i) = (x_coords(5) + x_coords(4))/2;
    end
end

y_centroid(1) = (0.5+0.25)/2;
y_centroid(2) = (0.25)/2;
y_centroid(3) = (0.75+0.5)/2;
y_centroid(4) = (1+0.75)/2;
y_centroid(5) = y_centroid(3);
y_centroid(6) = y_centroid(4);
y_centroid(7) = y_centroid(1);
y_centroid(8) = y_centroid(2);
y_centroid(17) = 0.75;
y_centroid(18) = 0.25; 
counter = 0;
for i = 9:16
    y_centroid(i) = (1+0.875)/2-counter;
    counter = counter +0.125;
end

Domain(:,1) = Cell_ID
Domain(:,2)= Cell_size
Domain(:,3)= x_centroid
Domain(:,4)=y_centroid
 
