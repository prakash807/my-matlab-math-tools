function q=my_polyval(p,x)
    q=0;
    m=length(p);
    for i=1:m
        q=q+p(i).*x.^(m-i);
    end
end