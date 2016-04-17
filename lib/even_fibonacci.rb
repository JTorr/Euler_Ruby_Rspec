class Fibonacci
  def self.next(arr)
    arr[-1] + arr[-2]
  end

  def self.up_to(num, arr = [1,2] )
    next_num = self.next(arr)
    if next_num > num
      return arr
    else
      arr << next_num
      self.up_to(num, arr)
    end
  end

  def self.evens(arr)
    arr.select {|num| num % 2 == 0 }
  end

  def self.sum(arr)
    arr.reduce(:+)
  end
end
