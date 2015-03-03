require 'yaml'

# Dynamic Programming solution
class Fibonacci
  attr_accessor :mem_map
  def initialize
    @mem_map = Hash.new
  end

  def fib_dynamic(n)
    if !@mem_map[n].nil?
      return @mem_map[n]
    elsif n<=1
      @mem_map[n] = n
    else
      @mem_map[n] = fib_dynamic(n-1) + fib_dynamic(n-2)
    end
  end
end

# Quasi-dynamic, still causes issues with stack overflows as its still top-down
def fib_dynamic(n, mem_map=Hash.new)
  if mem_map[n] != nil
    return mem_map[n]
  elsif n<=1
    return n
  else
    mem_map[n] = fib_dynamic(n-1, mem_map), fib_dynamic(n-2)
  end
end

# Standard
def fib(n)
  if [0,1].include?(n)
    return n
  else
    return fib(n-1)+fib(n-2)
  end
end
