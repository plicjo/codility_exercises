
require 'spec_helper'
require_relative'../missing_integer'

describe '#missing_integer' do
  it 'returns the smallest missing integer' do
    array = [1, 3, 6, 4, 1, 2]
    expect(missing_integer(array)).to eq(5)
  end

  it 'all negative numbers' do
    array = [-1, -2, -3]
    expect(missing_integer(array)).to eq(1)
  end

  it 'one number' do
    array = [1]
    expect(missing_integer(array)).to eq(2)
  end

  it 'a mixed array' do
    array = [-3, -2, -1, 0, 1, 2, 4]
    expect(missing_integer(array)).to eq(3)
  end

  it 'an array with one zero' do
    array = [0]
    expect(missing_integer(array)).to eq(1)
  end
end
