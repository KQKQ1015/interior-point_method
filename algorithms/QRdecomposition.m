function [Q, R] = QRdecomposition(A)
n = size(A, 1);
Q = zeros(n, n);
R = zeros(n, n);

% Gram-Schmidt orthonormalization
for k = 1:4
    ak = A(:, k);
    p = 0;
    for i=1:k-1
        pi = dot(ak, Q(:, i));
        p = p - pi * Q(:, i);
        R(i, k) = pi;
    end
    uk_ = ak + p;
    uk = uk_ / sqrt(sum(uk_.^2));
    Q(:, k) = uk;
    R(k, k) = sqrt(sum(uk_.^2));
end
end

