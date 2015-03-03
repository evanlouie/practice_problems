def fact_it(n)
  product = 1
  for i in 1..n
    product *= i
  end
  return product
end

def fact_fun(n)
  return 1 if [0,1].include?(n)
  return n*fact_fun(n-1)
end

def fact_fun_op(n, mem={0=>1, 1=>1})
  if mem[n]!=nil
    return mem[n]
  else
    (mem.keys.last+1..n).each { |i| mem[i] = mem[i-1]*i }
    return mem[n]
  end
end

def perm(string, prefix='', mem=Array.new)
  if string == ''
    mem.push(prefix)
    return mem.sort
  else
    chars = string.split('')
    first = chars.shift
    perm(chars.join, prefix+(first.upcase), mem)
    perm(chars.join, prefix+(first.downcase),mem)
  end
end

a1 = [2,1,1,2]
a2 = [2,1,1,5,6,1,2,3,2,19,5,3]
require 'set'
class Node
  attr_accessor :val, :children
  def initialize(val, children=Set.new)
    @val = val
    @children = children
  end
end
def schedule(arr, head=Node.new(0))
  for i in 0..arr.length-1
    head.children.add(Node.new(arr[i]))
  end
  return head
end
require 'yaml'
puts schedule a2
