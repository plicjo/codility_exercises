def perm_check(array)
  values = array.group_by { |n| n }
  (1..array.size).each do |num|
    return 0 unless values[num]
  end
  1
end
