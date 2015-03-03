# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

class Euler4
  attr_accessor :largest, :x, :y
  def initialize
    @largest = 0
    @nums = (100..999)
    @x = 0
    @y = 0
  end

  def palindrome?(num)
    num.to_s == num.to_s.reverse
  end

  def main
    for x in @nums
      for y in @nums
        if self.palindrome?(x*y) && x*y > @largest
          @largest, @x, @y = x*y, x, y
        end
      end
    end
  end

end

x = Euler4.new
x.main
puts "#{x.largest}: x=#{x.x} y=#{x.y}"
