require 'spec_helper'
require_relative '../dominator'

describe '#dominator' do
  it 'returns the index of the dominator' do
    expect(dominator([3, 4, 3, 2, 3, -1, 3, 3])).to eq(0)
  end

  it 'another example' do
    expect(dominator([1, 2, 2, 1, 4, 2, 2])).to eq(1)
  end

  it 'no dominator' do
    expect(dominator([1, 2, 2, 1, 4, 1, 2])).to eq(-1)
  end

  it 'empty array' do
    expect(dominator([])).to eq(-1)
  end

  it 'one value' do
    expect(dominator([6])).to eq(0)
  end

  it 'two values' do
    expect(dominator([6, -2])).to eq(-1)
  end
end
