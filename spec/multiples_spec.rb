require 'multiples'

describe Multiples do
  let(:multiples) { [3,5,6,9] }

  context '.up_to(num)' do
    it 'finds all natural numbers up to the given number that are multiples of 3 and 5' do
      expect(described_class.up_to(10)).to match_array(multiples)
    end
  end

  context '.sum(multiples)' do
    it 'sums all the multiples' do
      expect(described_class.sum(multiples)).to eq(23)
    end
  end
end
