function [p,d]=my_pi(n)
p=0;
for i=1:n
    p=p+4*(-1)^(i+1)/(2*i-1);
end
d = pi-p;
format long
end