function [V, D] = calculateEig(A, maxIteration)
% QR method
D = A;
%[Q, R] = QRdecomposition(A);
V = eye(size(A));

for i = 1:maxIteration
    [Q, R] = QRdecomposition(D);
    D = R * Q;
    V = V * Q;
    
    if convergenceCheck(D, 1e-6)
        break;
    end
end


% Extract eigenvalues
n = size(A, 1);
eigs = zeros(n, 1);
for j = 1:n
    eigs(j) = D(j, j);
end
end

