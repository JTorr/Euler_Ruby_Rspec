require 'prime_factorizer'

describe PrimeFactorizer do
  context '.max_factor(num)' do
    it 'returns the largest prime factor' do
      expect(PrimeFactorizer.max_factor(13195)).to eq(29)
    end
  end
end
