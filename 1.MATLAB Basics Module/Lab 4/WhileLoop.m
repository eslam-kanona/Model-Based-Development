x=2;
while x < 21
    disp(x);
    x=x+1;
end


y=input('pleasea add number: ');
fact = 1;
i = 1;
while i <= y
    fact = fact * i;
    i = i + 1;
end

fprintf('The factorial of %d is %d.\n', y, fact);