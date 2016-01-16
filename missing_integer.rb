def missing_integer(array)
  values = array.group_by { |num| num }
  1.upto(100_001) do |num|
    return num unless values[num]
  end
end
