def binary_gap(n)
  results = n.to_s(2).scan(/(?<=1)0+(?=1)/)
  return 0 if results.empty?
  results.max.length
end
