function i=my_int_pwr(y,x)
    x=2
    N=log(y*x)/log(x);
    N=eval(N)
    syms x
    i=y*x/N;
end