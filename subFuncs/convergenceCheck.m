function isConverged = ConvergenceCheck(A, eps)
n = size(A, 1);
numElements = n * (n-1) / 2;
lowerTraingleElements = zeros(1, numElements);
index = 1;

for i = 2:n
    for j = 1:i-1
        lowerTraingleElements(index) = A(i, j);
        index = index + 1;
    end
end

isConverged =  sum(abs(lowerTraingleElements)) < eps;
end

