require 'spec_helper'
require_relative'../odd_occurrences_in_array'

describe '#odd_occurrences_in_array' do
  it 'returns the non-paired number' do
    array = [9, 3, 9, 3, 9, 7, 9]
    expect(odd_occurrences(array)).to eq(7)
  end

  it 'returns the only value if the length is one' do
    array = [9000]
    expect(odd_occurrences(array)).to eq(9000)
  end

  it 'returns the unpaired value' do
    array = [1, 1, 1]
    expect(odd_occurrences(array)).to eq(1)
  end
end
