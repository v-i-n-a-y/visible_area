% Change in visible area of sphere with distance
% Vinay Williams 
% 22/11/21
%
%
clear all;

r       = 696340;       % Radius of body [km]
u       = 147.72e6;     % Unit Length [km]
d       = 147.72e6;     % Max sim distance [km]

int     = 10000;        % Plotting interval [km]

x       = 0:(d/int)-1;  % Initialise array for x values
a       = x;            % Initialise array for area values

area = @(h) 2*pi*r^2*(h/(r+h));

% Calculate the first point
x(1) = 1;
a(1) = area(1); 

% Calculation loop
for h = int:int:d
    x(h/int) = h;
    a(h/int) = area(h);
end

figure(1);
hold on; 
plot(x./u, a,"--.")
xlabel("Height [Au]");
ylabel("Visible Area [km^2]");
title("Visible Area of Sun from 0 to " + x(length(x))/u+" Au")
