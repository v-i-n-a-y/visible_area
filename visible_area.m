% 
% Written by Vinay
%
% Created on 1st February 2022
%
% Calculates the visible area of sphere of radius, r, at a distance, d from
% it
%
function area =  visible_area(r, d)
    area = 2*pi*r*(d/(r+d));
end