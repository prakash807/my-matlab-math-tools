function [s,d] = my_sin(x,n)
s = 0;
for i=0:n
    % 1x/1!-1x^3/3!+1*x^5/5!-...
    s = s + (-1)^i.*x.^(2*i+1)/factorial(2*i+1);
end
d = sin(x)-s;
end