%% My Matlab Math Tool
% By Prakash Hampole

% Print welcome message
fprintf("Welcome to My Matlab Math Tool.\n");

% Variable used to indicate whether the user is finished and the while loop
% should end
% Initialize this value such that the while loop initially gets entereds
user_finished = 0;

% Create matrix showing which symbols correspond to which tools
tool_symbols = [...
    "A" "Arctangent approximation";
    "C" "Cosine";
    "E" "Euler's number";
    "Ex" "Natural exponential function";
    "F" "Fibonacci";
    "L" "Natural logarithm";
    "Mm" "Matrix multiplication";
    "M" "Maximum";
    "P" "Pi";
    "Pv" "Polynomial function";
    "Rp" "Random picture";
    "Rpa" "Random picture animation";
    "Rev" "Reverse string";
    "S" "Sine"
    "Anything else" "End program"];

% Create vector showing which symbols are for tools that take x and n as
% parameters
function_symbols_using_x_and_n = ["A" "C" "Ex" "L" "S"];
% Create vector showing which symbols are for tools that take just n as
% a parameter, where n is the number of iterations, related to accuracy
function_symbols_using_n = ["E" "P"];

% Enter while loop and repeat in it until user indicates they are done
while (user_finished == 0)
    
    % Display the symbols and their meanings to the user
    fprintf("\n\nSelect one of the following mathematical tools to use by entering the symbol (1-3 letters) in front of it:");
    for tool_symbols_row = tool_symbols'
        fprintf("%s: %s\n", tool_symbols_row(1), tool_symbols_row(2));
    end
    
    % Prompt the user to enter a symbol
    function_symbol_chosen = input("Enter the symbol: ", "s");
    
    % if/elseif/else blocks based in the symbol inputted
    % Most consist of prompting for values of parameters, calling function
    % with inputted paramater values, and displaying the result(s)
    
    % For tools that take x and n
    if (any(function_symbol_chosen == function_symbols_using_x_and_n))
        % Prompt for x and n
        x = input("\nEnter the value of which you wish to approximate the selected function: ");
        n = input("\nEnter the number of iterations (related to the accuracy of the approximation: ");
        
        % If/elseif blocks based on exactly which symbol
        % Arctangent
        if (function_symbol_chosen == "A")
            fprintf("\nApproximating arctangent:");
            [approximation, difference] = my_atan(x, n);
        % Cosine
        elseif (function_symbol_chosen == "C")
            fprintf("\nApproximating cosine:");
            [approximation, difference] = my_cos(x, n);
        % Exponential function
        elseif (function_symbol_chosen == "Ex")
            fprintf("\nApproximating e^x:");
            [approximation, difference] = my_exp(x, n);
        % Natural logarithm
        elseif (function_symbol_chosen == "L")
            fprintf("\nApproximating natural logarithm:");
            [approximation, difference] = my_ln(x, n);
        % Sine
        elseif (function_symbol_chosen == "S")
            fprintf("\nApproximating sine:");
            [approximation, difference] = my_sin(x, n);
        end
        
        % Display the approximation, error, and exact value
        fprintf("Using %d iterations, the approximation is %f, %f more than the exact value, %f.\n", n, approximation, difference, approximation + difference);
    % For tools that take n, number of iterations, related to accuracy
    elseif (any(function_symbol_chosen == function_symbols_using_n))
        % Prompt user for number of iterations
        n = input("\nEnter the number of iterations (related to the accuracy of the approximation: ");
        
        % To approximate e
        if (function_symbol_chosen == "E")
            fprintf("\nApproximating e:\n");
            [approximation, difference] = my_e(n);
        % To approximate pi
        elseif (function_symbol_chosen == "P")
            fprintf("\nApproximating pi:\n");
            [approximation, difference] = my_pi(n);
        end
        
        % Display the approximation, error, and exact value
        fprintf("Using %d iterations, the approximation is %f, %f more than the exact value, %f.\n", n, approximation, difference, approximation + difference);
    % Find n^ Fibonacci number
    elseif (function_symbol_chosen == "F")
        fprintf("\nTo calculate the n^th Fibonacci number:\n");
        n = input("\nEnter n where the n^th number of the Fibonacci sequence is what you are looking for: ");
        f = my_fib(n);
        fprintf("The %d^th Fibonacci number is %d.", n, f);
    % Performing matrix multiplication
    elseif (function_symbol_chosen == "Mm")
        fprintf("\nTo multiply matrices:\n");
        A = input("\nEnter the first matrixs (A as in AB) in proper Matlab formatting:\n");
        B = input("\nEnter the second matrixs (B as in AB) in proper Matlab formatting:\n");
        C = my_matrix_multiplication(A, B);
        fprintf("\nThe following is the product of these two matrices:\n");
        C
    % Find maximum of matrix
    elseif (function_symbol_chosen == "M")
        fprintf("\nTo find the largest element in a matrix:\n");
        A = input("\nEnter a matrix, with proper Matlab formatting from which you want to find the largest element:\n");
        max = my_max(A);
        fprintf("\nThe largest element in this array is %d.\n", max);
    % Find value of polynomial function for specific x value
    elseif (function_symbol_chosen == "Pv")
        fprintf("\nTo calculate the value of a polynomial function at x:\n")
        p = input ("\nEnter a 1-dimensional array with proper Matlab formatting, with the coefficients of the polynomial function of interest, e.g. [2 5 4] for 2x^2+5x+4:\n");
        x = input ("\nEnter the value of x at which to evaluate this polynomial function: \n");
        val = my_polyval(p, x);
        fprintf("The value is: %d", val);
    % Generate random picture
    elseif (function_symbol_chosen == "Rp")
        fprintf("\nTo generate a random picture:\n");
        width = input("Enter the desired width in pixels: \n");
        height = input("Enter the desired height in pixels: \n");
        my_rand_pic(width, height);
    % Generate animation of random pictures
    elseif (function_symbol_chosen == "Rpa")
        fprintf("\nTo generate an animation of random pictures (like TV static):\n");
        width = input("\nEnter the desired width in pixels: ");
        height = input("\nEnter the desired height in pixels: ");
        num_frames = input("\nEnter the desired number of frames in the animation: ");
        pause_time = input("\nEnter the amount of time each frame should be displayed: ");
        my_rand_pic_animation(width, height, num_frames, pause_time);
    % Reverse a string
    elseif (function_symbol_chosen == "Rev")
        fprintf("\nTo reverse a string:\n")
        string = input("Enter the string to reverse: ", "s");
        rev = my_reverse(string);
        fprintf("The reverse of %s is %s.\n", string, rev);
    % User wants to quit
    else
        user_finished = 1;
        fprintf("Goodbye.");
    end
    % Allow a "pause" by waiting until user enters anything, before
    % continue to next while loop iteration
    if (user_finished == 0)
        input("\n\nEnter anything to return to menu.\n\n", "s");
    end
    
end
