require 'even_fibonacci'

describe Fibonacci do
  let(:fibs) { [1, 2, 3, 5, 8, 13, 21, 34, 55, 89] }
  let(:evens) { [2, 8, 34] }

  context '.next' do
    it 'finds the next Fibonacci number' do
      expect(described_class.next([1,2])).to eq(3)
    end
  end

  context '.up_to(num)' do
    it 'finds all Fibonacci numbers up to the given number' do
      expect(described_class.up_to(90)).to match_array(fibs)
    end
  end

  context '.evens(arr)' do
    it 'finds all the even numbers from a given array' do
      expect(described_class.evens(fibs)).to match_array(evens)
    end
  end

  context '.sum(arr)' do
    it 'sums the array of numbers' do
      expect(described_class.sum(evens)).to eq(44)
    end
  end
end
