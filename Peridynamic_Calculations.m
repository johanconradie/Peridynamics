clc;
clear all;

display 'peridynamics'

% Domain = [ Cell_ID, Cell_size, x_centroid, y_centroid];

Cell_ID = [1:1:18]

x_coords = [ 0 0.25 0.5 0.625 1]'

y_coords = [0:0.125:1.0]'

Cell_ID = [1:1:18]'


for i=1:18
    
    if(i < 9 )
        Cell_size(i) = (x_coords(3) - x_coords(2)) *(y_coords(3)-y_coords(1));
        x_centroid(i) = (x_coords(3) + x_coords(2))/2
        
    end
    
    if( i >8 && i <17)
        Cell_size(i) = (x_coords(4)-x_coords(3))*(y_coords(2)-y_coords(1));
        x_centroid(i) = (x_coords(4) + x_coords(3))/2
    end
    
    if(i>=17)
        Cell_size(i) = (x_coords(5)-x_coords(4))*(y_coords(5) - y_coords(1));
        x_centroid(i) = (x_coords(5) + x_coords(4))/2
    end
end


