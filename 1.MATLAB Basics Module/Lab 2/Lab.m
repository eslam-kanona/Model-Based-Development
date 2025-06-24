%_____Numeric Types_____

intVar = int8(5);
doubleVar = 20 ;
class(intVar)
class(doubleVar)



%_____Creating Numeric Arrays_____

evenNumbers = 2:2:10 ;
primes = [2 3 5 7 11];
primeNumbers = primes';
disp(evenNumbers)
disp(primeNumbers)



%_____Specialized Matrix Functions_____

identityMatrix = eye(3);
magicSquare = magic(2);
disp(identityMatrix)
disp(magicSquare)



%_____Matrix Concatenation_____

combinedVector = cat(2 ,evenNumbers,primeNumbers' );
disp(combinedVector)
% identity matrix is 3x3 and the magic square is 2x2
% add a column of zeros and a row of zeros to make it 3x3
magicSquare3x3 = [magicSquare, zeros(2,1); zeros(1,3)];
disp(magicSquare3x3)
combinedMatrix = cat(1 ,identityMatrix ,magicSquare3x3 );
disp(combinedMatrix)
