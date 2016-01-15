require 'spec_helper'
require_relative'../frog_jump'

describe '#frog_jump' do
  it 'counts the minimum number of jumps needed' do
    expect(frog_jump(10, 85, 30)).to eq(3)
  end

  it 'doesnt jump if hes already to the other side' do
    expect(frog_jump(20, 20, 12)).to eq(0)
  end

  it 'jumps 1 time if it only takes one jump' do
    expect(frog_jump(1, 3, 2)).to eq(1)
    expect(frog_jump(1, 3, 7)).to eq(1)
  end
end
