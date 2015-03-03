require 'yaml'

def reverse_bitwise(s)
	for i in 0...s.length/2
		s[i] = (s[i].ord ^ s[s.length-1-i].ord).chr
		s[s.length-1-i] = (s[i].ord ^ s[s.length-1-i].ord).chr
		s[i] = (s[i].ord ^ s[s.length-1-i].ord).chr
	end
	return s
end


def reverse(s)
	(0...(s.length/2)).each {|i| s[i], s[s.length-i-1]=s[s.length-i-1], s[i]}
	return s
end



puts "Enter String:"
s = gets.chomp

puts "Normal:\n\t#{reverse(s.clone)}"
puts "Bitwise:\n\t#{reverse_bitwise(s.clone)}"
