% when |-x^2|<1
% 1/(1+x^2)=1-x^2+x^4-x^6+...
% atan(x) = x-x^3/3+x^5/5-x^7/7+...
function [at,d]=my_atan(x,n)
if abs(x)<1
    at=0;
    for i=1:n
        at=at+(-1)^(i+1).*x.^(2*i-1)/(2*i-1);
    end
else
    % atan(x) = pi/2-atan(1/x)
    at=pi/2;
    for i=1:n
        at=at+(-1)^(i).*x.^(1-2*i)/(2*i-1);
    end
d = atan(x)-at;
format long
end