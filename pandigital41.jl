include("./Functions.jl")

using Primes
using Functions

answer = 0
for j = 1:9
  for i = 1:(factorial(j))
    k = kthpermutation(i,j)
    if isprime(k)
      if k > answer
        answer = k
      end
    end
  end
end

println(answer)
