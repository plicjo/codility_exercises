require 'spec_helper'
require_relative '../count_div'

describe '#count_div' do
  it 'counts the divisible numbers' do
    expect(count_div(6, 11, 2)).to eq(3)
  end

  it 'another example' do
    expect(count_div(5, 15, 3)).to eq(4)
  end

  it 'a range of zero' do
    expect(count_div(0, 0, 3)).to eq(1)
  end

  it 'small range' do
    expect(count_div(0, 1, 3)).to eq(1)
  end

  it 'another small range' do
    expect(count_div(0, 1, 3)).to eq(1)
  end
end
