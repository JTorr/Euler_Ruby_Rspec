require 'prime'

class PrimeFactorizer
  def self.max_factor(num)
    Prime.prime_division(num).flatten.max
  end
end
