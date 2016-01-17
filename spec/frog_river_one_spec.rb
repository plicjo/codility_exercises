require 'spec_helper'
require_relative '../frog_river_one'

describe '#frog_river_one' do
  it 'the frog crosses in 6 seconds' do
    x, array = 5, [1, 3, 1, 4, 2, 3, 5, 4]
    expect(frog_river_one(x, array)).to eq(6)
  end

  it 'another example' do
    x, array = 4, [1, 1, 1, 4, 4, 3, 3, 2, 3]
    expect(frog_river_one(x, array)).to eq(7)
  end

  it 'the frog never gets to the other side' do
    x, array = 3, [1, 2, 2, 1, 1, 1]
    expect(frog_river_one(x, array)).to eq(-1)
  end

  it 'a small array' do
    x, array = 1, [1]
    expect(frog_river_one(x, array)).to eq(0)
  end
end
