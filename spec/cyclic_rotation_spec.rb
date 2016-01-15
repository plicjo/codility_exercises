require 'spec_helper'
require_relative'../cyclic_rotation'

describe '#cyclic_rotation' do
  it 'rotates counterclockwise' do
    array, num_rotations = [3, 8, 9, 7, 6], 3
    expect(cyclic_rotation(array, num_rotations)).to eq([9, 7, 6, 3,8])
  end

  it "doesn't rotate when num_rotations is zero" do
    array, num_rotations = [4, 3, 2], 0
    expect(cyclic_rotation(array, num_rotations)).to eq(array)
  end

  it 'an empty array doesnt blow up' do
    array, num_rotations = [], 20
    expect(cyclic_rotation(array, num_rotations)).to eq([])
  end

  it 'can rotate in the clockwise direction' do
    array, num_rotations = [4, 3, 2, 1], 2
    expect(cyclic_rotation(array, num_rotations)).to eq([2, 1, 4, 3])
  end

  it 'a one element array doesnt change' do
    array, num_rotations = [9000], 60
    expect(cyclic_rotation(array, num_rotations)).to eq([9000])
  end
end
