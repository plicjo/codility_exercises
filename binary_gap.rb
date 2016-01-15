def binary_gap(n)
  gaps = n.to_s(2).scan(/1?0+1/).map do |string|
    string.gsub('1', '')
  end

  return 0 if gaps.empty?
  gaps.max.length
end
