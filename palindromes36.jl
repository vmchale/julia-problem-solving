function is_palindrome(str)
  str == reverse(str)
end

sum = 0
for i = 1:1000000
  if is_palindrome(dec(i)) && is_palindrome(bin(i))
    sum = i + sum
  end
end

println(sum)
