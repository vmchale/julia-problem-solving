function collatzLength(n)
  i = 1
  while n != 1
    if mod(n,2) == 0
      n = n / 2
    else
      n = 3n + 1
    end
    i = i + 1
  end
  i
end

max = 1
maxAt = 1
for i in 1:1000000
  if collatzLength(i) > max
    max = collatzLength(i)
    maxAt = i
  end
end

println(maxAt)