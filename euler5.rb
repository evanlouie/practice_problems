# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

class Euler5

  attr_accessor :smallest
  def initialize
    @smallest = 0
    @range = (1..20).to_a
  end

  def main
    i = 20
    while @range.map{ |n| i%n==0 }.include?(false)
      i += 20
      # puts i
    end
    return @smallest = i
  end
end

main = Euler5.new
main.main

puts main.smallest
