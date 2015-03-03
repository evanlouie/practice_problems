class Euler6
  attr_accessor :difference

  def initialize
    @difference = 0
  end

  def main
    @difference = (0..100).inject(:+)**2-(0..100).to_a.map{|i| i**2}.inject(:+)
  end

end

main = Euler6.new
main.main
puts main.difference
