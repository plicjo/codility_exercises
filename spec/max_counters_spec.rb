require 'spec_helper'
require_relative '../max_counters'

describe '#max_counters' do
  it 'calculates the value of every counter' do
    n = 5
    array = [3, 4, 4, 6, 1, 4, 4]
    expect(max_counters(n, array)).to eq([3, 2, 2, 4, 2])
  end

  it 'multiple max counters' do
    n = 5
    array = [3, 4, 4, 6, 6, 6, 4]
    expect(max_counters(n, array)).to eq([2, 2, 2, 3, 2])
  end

  it 'n is 1' do
    n = 1
    array = [1, 2, 1, 2, 1, 2, 2, 1]
    expect(max_counters(n, array)).to eq([4])
  end
end
