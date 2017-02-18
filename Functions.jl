module Functions
export digitSum
export isPrime
export kthpermutation

using Permutations

function digitSum(n)
  total = 0
  n_str = dec(n)
  for c in 1:length(n_str)
    m = parse(Int, n_str[c])
    total = total + m
  end
  total
end

function isPrime(n)
  start = true
  for i in 2:sqrt(n)
    if mod(n,i) == 0
      start = false
    end
  end
  start
end

function kthpermutation(k,n)
  tointeger(array(Permutation(n,k)))
end

function tointeger(arr)
  arr = reverse(arr)
  total = 0
  i = 0
  for x in arr
    total = total + x * 10^i
    i = i + 1
  end
  total
end

end
