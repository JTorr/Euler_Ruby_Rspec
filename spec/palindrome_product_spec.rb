require 'palindrome_product'

describe PalindromeProduct do
  let(:subject) { PalindromeProduct.new(2) }

  context '#largest' do
    it 'finds the largest palindrome project' do
      expect(subject.largest).to eq(9009)
    end
  end

  context '#all_products' do
    it 'finds all products produced from multiples of the given # of digits' do
      expect(subject.all_products).to include(5445, 2178, 2418)
    end
  end

  context '#palindrome_products' do
    it 'finds all products that are palindromes' do
      expect(subject.palindrome_products).to include(9009, 6006, 5005)
    end
  end

  context '#palindrome?(num)' do
    it 'returns true if the number is a palindrome' do
      expect(subject.palindrome?(9009)).to be_truthy
    end

    it 'returns false if the number is not a palindrome' do
      expect(subject.palindrome?(9899)).to be_falsey
    end
  end
end
