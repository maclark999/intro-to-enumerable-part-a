def product(numbers)
  result = 1
  numbers.each do |number|
    result = number * result
  end
  if result == 1
    nil
  else
  result
end
end



require 'rspec/autorun'

RSpec.describe '#product' do
  it 'multiplies all of the numbers in the array' do
    expect(product([1,2,7])).to eq(14)
    expect(product([10])).to eq(10)
    expect(product([1,2,-3])).to eq(-6)
  end

  it 'returns nil for empty arrays' do
    expect(product([])).to eq(nil)
  end
end
