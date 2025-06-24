transportation_method = input('Please enter your transportation method (car/train/bus/airplane): ', 's');

switch transportation_method
    case 'car'
        disp('Price is $20');
    case 'train'
        disp('Price is $15');
    case 'bus'
        disp('Price is $10');
    case 'airplane'
        disp('Price is $50');
    otherwise
        disp('Invalid transportation method.');
end



colorCode = input('Enter a color code (R/G/B/Y/K): ', 's');

switch upper(colorCode)  
    case 'R'
        disp('Red');
    case 'G'
        disp('Green');
    case 'B'
        disp('Blue');
    case 'Y'
        disp('Yellow');
    case 'K'
        disp('Black');
    otherwise
        disp('Invalid color code.');
end
