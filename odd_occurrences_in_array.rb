def odd_occurrences(array)
  array.group_by { |num| num }
       .each_value { |value| return value[0] if value.size.odd? }
end
