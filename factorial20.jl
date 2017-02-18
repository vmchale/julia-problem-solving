include("./Functions.jl") 
using Functions

function factorial(n)
  total = 1
  for i = 1:n
    total = total * i
  end
  total
end

println(digitSum(factorial(BigInt(100))))
