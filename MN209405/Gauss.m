function [ X ] = Gauss( A, b )
n=size(A,1);
AB= [A B]

for w=0 :n-1
    [a ii]=max(AB(k:end, k)
    ii= ii+k -1;
    rr = AB(k, :);
    AB(k, :)=AB(ii, :);
    AB(ii, :)=rr;
    for l= w+1 :n
        m =AB(l,k)/AB(k,k)
        AB(l, :)= AB(l, :) -m .*AB(k,:)    
    end
end
A=AB(:, 1:n)
B=AB(:, end)
X= zeros(n,1)
for k = n:-1:1
X(k) = B(k) ./A(k,k)
B(1:k)=B(1:k) - X(k) .* A(1:k, k)
end

