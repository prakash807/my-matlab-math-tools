function [e,d] = my_e(n)
    e = 0;
    for i = 0:n
        e = e + 1/factorial(i);
    end
    d = exp(1)-e;
format long
end