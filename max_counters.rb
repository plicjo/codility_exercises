def max_counters(n, array)
  counters = [0] * n
  max_counter = 0
  array.each do |x|
    if (x == (n + 1))
      counters = [max_counter] * n
    else
      counter = counters[x - 1] += 1
      max_counter += 1 if counter > max_counter
    end
  end
  counters
end
