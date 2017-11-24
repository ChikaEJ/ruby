require 'fizzbuzz'
describe 'FizzBuzz' do
  it 'should return 1 if 1 passed in' do
    expect(fizzbuzz(number 1)).to eq 1
  end
  it 'should return 2 if 2 passed in' do
    expect(fizzbuzz(number 2)).to eq 2
  end
  it 'should return fizz if 3 passed in' do
    expect(fizzbuzz(number 3)).to eq 'fizz'
  end
  it 'should return buzz if 5 passed in' do
    expect(fizzbuzz(number 5)).to eq 'buzz'
    it 'should return fizzbuzz if 10 passed in' do
      expec(fizzbuzz(number 10)).to eq 'buzz'
    end
  end
end