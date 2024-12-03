function [V, D] = calculateEig(A)
% Calculate eigenvalues and eigenvectors
% INPUTS
% A : Symmetric positive definite matrix
% OUTPUT
% V : Diagonal matrix of eigenvalues (same as MATLAB function)
% D : A matrix whose columns are the eigenvectors corresponding to D
%     (same as MATLAB function)
%
% A*V = V*D
% 
% Algorithms
% The QR method is used to calculate eigenvalues and eigenvectors.

% QR method
D = single(A);
V = single(eye(size(A)));

% If calculation dose not converge, abort at maxIteration.
maxIteration = 100;

for i = 1:maxIteration
    % QR decomposition
    [Q, R] = QRdecomposition(D);
    D = R * Q;
    V = V * Q;
    
    % Convergence check
    if convergenceCheck(D, 1e-6)
        i = maxIteration;
    end
end
end

