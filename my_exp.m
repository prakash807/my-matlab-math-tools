function [ex,d] = my_exp(x,n)
    ex = 0;
    for i = 0:n
        ex = ex + x.^i/factorial(i);
    end
    d = exp(x)-ex;
format long
end