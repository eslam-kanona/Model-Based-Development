function output = applyFunction(funcHandle, vec)
    output = zeros(size(vec));  
    for i = 1:length(vec)
        output(i) = funcHandle(vec(i));
    end
end