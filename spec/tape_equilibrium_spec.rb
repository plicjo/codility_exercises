require 'spec_helper'
require_relative'../tape_equilibrium'

describe '#tape_equilibrium' do
  it 'returns the smallest absolute difference' do
    array = [3, 1, 2, 4, 3]
    expect(tape_equilibrium(array)).to eq(1)
  end

  it 'works for a small array' do
    array = [6, 2]
    expect(tape_equilibrium(array)).to eq(4)
  end

  it 'works for negative numbers' do
    array = [6, -2]
    expect(tape_equilibrium(array)).to eq(8)
  end

  it 'both values are zero' do
    array = [0, 0]
    expect(tape_equilibrium(array)).to eq(0)
  end
end
