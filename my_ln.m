% when |1-x|<1
% 1/(1-(1-x))
% 1/x = 1+(1-x)+(1-x)^2+...
% lnx = x-(1-x)^2/2-(1-x)^3/3
function [l,d] = my_ln(x,n)
l = 0;
if x>0 && x<2
    for i = 1:n
        l = l - (1-x).^i/i;
    end
elseif x>=2
    for i = 1:n
        l = l - (1-1/x).^i/i;
    end
    l=-l;
d = log(x) - l;
format long
end