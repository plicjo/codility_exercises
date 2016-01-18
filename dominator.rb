def dominator(array)
  array_size = array.size
  return -1 if array_size == 0

  candidate = array.group_by{ |n| n}.max do |a, b|
    a[1].length <=> b[1].length
  end[0]

  count = 0
  array.each do |num|
    count += 1 if num == candidate
  end

  (count > array_size / 2) ? array.index(candidate) : -1
end
