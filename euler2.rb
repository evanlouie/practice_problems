RubyVM::InstructionSequence.compile_option = {
  tailcall_optimization: true,
  trace_instruction: false
}

class Fibonacci
  attr_accessor :mem_map
  def initialize
    @mem_map = Hash.new
  end

  def fib(n)
    if @mem_map[n] != nil
      return @mem_map[n]
    elsif n<=1
      return @mem_map[n] = n
    else
      return @mem_map[n] = fib(n-1) + fib(n-2)
    end
  end
end

fib = Fibonacci.new
current = 1
sum = 0
while fib.fib(current) <= 4000000
  sum += fib.fib(current) if fib.fib(current)%2==0
  current+=1
end

puts sum
