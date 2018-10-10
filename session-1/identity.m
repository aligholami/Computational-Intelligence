function A = identity( N )
A(N,N) = 0;
A((N+1)*(0:N-1)+1) = 1;
end