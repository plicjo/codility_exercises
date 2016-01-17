require 'set'

def frog_river_one(x, a)
  river = Set.new
  a.each_with_index do |value, index|
    river.add(value)
    return index if river.size == x
  end
  -1
end
