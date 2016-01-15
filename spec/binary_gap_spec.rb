require 'spec_helper'
require_relative'../binary_gap'

describe '#binary_gap' do
  it 'returns the largest binary gap' do
    expect(binary_gap(1041)).to eq(5)
  end

  it 'returns 0 if no gap' do
    expect(binary_gap(1)).to eq(0)
    expect(binary_gap(15)).to eq(0)
  end

  it 'trailing zeroes do not count as a gap' do
    expect(binary_gap(20)).to eq(1)
  end
end
