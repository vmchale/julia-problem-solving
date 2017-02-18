function is_permutation(m, n)
  m_str = dec(m)
  n_str = dec(n)
  big_val = true
  for i = 1:length(n_str)
    val = false
    for j = 1:length(m_str)
      if n_str[i] == m_str[j]
        val = val || true
      else
        val = val || false
      end
    end
    big_val = val && big_val
  end
  big_val
end

for i = 1:10000000000000000000000
  if is_permutation(i, 2*i) && is_permutation(i, 3*i) && is_permutation(i, 4*i) && is_permutation(i, 5*i) && is_permutation(i, 6*i)
    println(i)
    quit()
  end
end

