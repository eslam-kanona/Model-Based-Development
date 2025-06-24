function outerFunction()
    result = innerFunction(5, 7);
 
    fprintf('The result is: %d\n', result);

    function sum = innerFunction(a, b)
        sum = a + b;
    end
end

% Write (Function4) in the Command Window