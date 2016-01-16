require 'spec_helper'
require_relative'../perm_missing_elem'

describe '#missing_elem' do
  it 'locates the missing element' do
    array = [2, 3, 1, 5]
    expect(missing_elem(array)).to eq(4)
  end

  it 'an empty array returns 1' do
    array = []
    expect(missing_elem(array)).to eq(1)
  end

  it 'an array with one number returns 2' do
    array = [1]
    expect(missing_elem(array)).to eq(2)
  end
end
