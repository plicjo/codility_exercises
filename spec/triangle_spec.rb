require 'spec_helper'
require_relative '../triangle'

describe '#triangle' do
  it 'determines if there is a triangle' do
    expect(triangle([10, 2, 5, 1, 8, 20])).to eq(1)
  end

  it 'determines if there is not a triangle' do
    expect(triangle([10, 50, 5, 1])).to eq(0)
  end

  it 'another triangle' do
    expect(triangle([3, 2, 4])).to eq(1)
  end

  it 'another non-triangle' do
    expect(triangle([2, 3, 5])).to eq(0)
  end

  it 'one side is zero' do
    expect(triangle([0, 4, 5])).to eq(0)
  end

  it 'negative numbers' do
    expect(triangle([-100, -40, 500])).to eq(0)
  end
end
