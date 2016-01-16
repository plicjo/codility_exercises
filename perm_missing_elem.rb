# 100% accurate, only 20% for speed score
def missing_elem(array)
  1.upto(100_001) do |num|
    return num unless array.index(num)
  end
end
