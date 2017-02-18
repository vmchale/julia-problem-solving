function triangular(n)
  sum = 0
  for i in 1:n
    sum = sum + i
  end
  sum
end

function countDivisors(n)
  factors = 0
  for i in 1:floor(√n)
    if mod(n,i) == 0
      factors = factors + 1
    end
  end
  factors = factors * 2
  if √n == floor(√n)
    factors = factors - 1
  end
  factors
end

for i in 1:100000000000000000000000000
  if countDivisors(triangular(i)) >= 500
    println(triangular(i))
    quit()
  end
end
