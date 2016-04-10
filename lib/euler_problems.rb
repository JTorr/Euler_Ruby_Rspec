files = Dir[File.dirname(File.expand_path(__FILE__)) + "/**/*.rb"] - [File.expand_path(__FILE__)]
files.each {|f| require f }

#Euler 1
array = Multiples.up_to(1000)
euler1 = Multiples.sum(array)
puts "Euler 1 answer is #{euler1}"

#Euler 2
