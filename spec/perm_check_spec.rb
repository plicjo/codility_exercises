require 'spec_helper'
require_relative'../perm_check'

describe '#perm_check' do
  it 'checks if an array is a permutation' do
    array = [4, 1, 3, 2]
    expect(perm_check(array)).to eq(1)
  end

  it 'array is not unique' do
    array = [2, 4, 1, 3, 2]
    expect(perm_check(array)).to eq(0)
  end

  it 'array is not unique but has all values' do
    array = [4, 1, 3, 2, 2, 5]
    expect(perm_check(array)).to eq(0)
  end

  it 'array is missing a value' do
    array = [5, 2, 3, 4]
    expect(perm_check(array)).to eq(0)
  end

  it 'a single value array' do
    array = [1]
    expect(perm_check(array)).to eq(1)
  end
end
