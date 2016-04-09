class Multiples
  def self.up_to(num)
    nums = (1..(num -1)).to_a
    nums.select {|n| n % 3 == 0 || n % 5 == 0 }
  end

  def self.sum(arr)
    arr.reduce(:+)
  end
end
