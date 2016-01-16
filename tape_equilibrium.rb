def tape_equilibrium(array)
  p = 0
  sum_left = 0
  sum_right = array.reduce(:+)

  begin
    sum_left  += array[p]
    sum_right -= array[p]
    difference = (sum_left - sum_right).abs
    minimum = difference if !minimum || difference < minimum
    p += 1
  end while(p + 1 < array.size)

  minimum
end
