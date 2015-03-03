def is_prime(n)
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

largest = 0;
(0..600851475143).each{|i| (is_prime(i) && 600851475143%i==0) ? largest = i : nil; puts largest }
puts largest
