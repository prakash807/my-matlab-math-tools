function max = my_max(A)
    % my_max:
    % outputs highest element in input array A
    A = A(:); % Convert A to a 1D vector
    max = A(1); % Set max as the first element of A
    my_size = size(A); % Create variable equal to size of A
    for i=1:1:my_size(1) % Create for loop starting with 1 (in case A is only 1 element), going one-by-one through each element
        if A(i)>max
            max=A(i); % When a higher element is found, make that the new max
        end
    end
end