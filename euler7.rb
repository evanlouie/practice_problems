class Euler7
  attr_accessor :mem_map

  def initialize
      @mem_map = {1=>2, 2=>3}
  end

  def prime?(n)
    return n>=2 if n<=3
    return false if n%2==0 || n%3==0
    i = 5
    while i*i <= n
      if n % i==0 || n % (i+2) == 0
        return false
      end
      i+=6
    end
    return true
  end

  def main
    loop do
      current = @mem_map[@mem_map.keys.last]
      loop do
        current +=1
        if prime?(current)
          @mem_map[@mem_map.keys.last+1]=current
          break
        end
      end
      break if @mem_map[10001] != nil
    end
  end
end

main = Euler7.new
main.main

puts main.mem_map.values.last
