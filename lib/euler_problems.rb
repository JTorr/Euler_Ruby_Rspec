require 'benchmark'

files = Dir[File.dirname(File.expand_path(__FILE__)) + "/**/*.rb"] - [File.expand_path(__FILE__)]
files.each {|f| require f }

# Euler 1
array = Multiples.up_to(1000)
euler1 = Multiples.sum(array)
puts "Euler 1 answer is #{euler1}"

# Euler 2
fibs = Fibonacci.up_to(4000000)
evens = Fibonacci.evens(fibs)
sum = Fibonacci.sum(evens)
puts "Euler 2 answer is #{sum}"

# Euler 3
puts "Time to run: "
puts Benchmark.measure { PrimeFactorizer.max_factor(600851475143)}
puts "Euler 3 answer is #{PrimeFactorizer.max_factor(600851475143)}"
