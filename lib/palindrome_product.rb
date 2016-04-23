class PalindromeProduct
  attr_accessor :a, :b

  def initialize(digits)
    @a = @b = @max = ("9" * digits).to_i
    @min = ("1" + ("0" * (digits -1))).to_i
  end

  def largest
    palindrome_products.max
  end

  def all_products
    products = []
    while @a >= @min
      while @b >= @min
        products << @a * @b
        @b -= 1
      end
      @b = @max
      @a -= 1
    end
    products
  end

  def palindrome_products
    all_products.select { |p| palindrome?(p) }
  end

  def palindrome?(num)
    num.to_s == num.to_s.reverse
  end
end
