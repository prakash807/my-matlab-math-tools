%% Fibonacci Sequence
function f=my_fib(n)
if n==1
    f=1;
elseif n>1
    % Sequence starts with 1,1
    f=[1 1];
    for i=3:n
        % Add previous two terms
        f(i)=f(i-2)+f(i-1);
    end
end