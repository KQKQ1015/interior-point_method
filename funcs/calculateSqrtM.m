function sqrtA = calculateSqrtM(A)
% Calculate square root of matrix
% INPUTS
% A : Symmetric positive definite matrix
% OUTPUT
% sqrtA : Square matrix with all non-negative real eigenvalues.
% 
% A = sqrtA * sqrtA
% 
% Algorithms
% Diagonalize the matrix and find it
[P, D]  = calculateEig(A);

sqrtD = zeros(size(D));
for i = 1:size(D, 1)
    sqrtD(i, i) = sqrt(D(i, i));
end
sqrtA = P * sqrtD * P .';
end

