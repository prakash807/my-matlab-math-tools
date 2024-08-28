function [c,d] = my_cos(x,n)
c = 0;
for i=0:n
    % sinx=1x/1!-1x^3/3!+1x^5/5!-...
    % cosx=1x^0/0!-1x^2/2!+1x^4/4!-...
    c = c + (-1)^i.*x.^(2*i)/factorial(2*i);
end
d = cos(x)-c;
end