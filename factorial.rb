class Factorial
  attr_accessor :mem_map

  def initialize
    # @mem_map = Hash.new
    @mem_map = {0 => 1, 1=> 1}
  end

  def factorial(n)
    if n>1000 && @mem_map[n]==nil
      (1..n/1000).each{|i| self.factorial(i*100)}
    end
    return @mem_map[n] if @mem_map[n] != nil
    return @mem_map[n] = n if n<=1
    return @mem_map[n] = n*self.factorial(n-1)
  end

  def f(n)
    return @mem_map[n] if @mem_map[n] != nil
    return @mem_map[n] = n if n<=1
    (@mem_map.keys.last+1..n).each{|i| @mem_map[i]=@mem_map[i-1]*i}
  end
end
