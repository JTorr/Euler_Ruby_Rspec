require 'benchmark'

files = Dir[File.dirname(File.expand_path(__FILE__)) + "/**/*.rb"] - [File.expand_path(__FILE__)]
files.each {|f| require f }

# Euler 1
array = Multiples.up_to(1000)
puts "Euler 1 answer is #{ Multiples.sum(array) }"
puts Benchmark.measure { Multiples.sum(array) }

# Euler 2
fibs = Fibonacci.up_to(4000000)
evens = Fibonacci.evens(fibs)
puts "Euler 2 answer is #{Fibonacci.sum(evens) }"
puts Benchmark.measure { Fibonacci.sum(evens) }

# Euler 3
puts "Euler 3 answer is #{PrimeFactorizer.max_factor(600851475143)}"
puts Benchmark.measure { PrimeFactorizer.max_factor(600851475143)}

# Euler 4
