# These are two ways to do a string reverse in ruby
# One does the via bitwise XOR; allowing for incredibly effecient memory usage (no additional variable needed)

require 'yaml'
def reverse_bitwise(s)
	for i in 0..s.length/2
		s[i] = (s[i].ord ^ s[s.length-1-i].ord).chr
		s[s.length-1-i] = (s[i].ord ^ s[s.length-1-i].ord).chr
		s[i] = (s[i].ord ^ s[s.length-1-i].ord).chr
	end
	return s
end


def reverse(a)
	(0...(a.length/2)).each {|i| a[i], a[a.length-i-1]=a[a.length-i-1], a[i]}
	return a
end


s = "Reverse this String please!!1!1!31!"

puts s.size
puts YAML::dump(reverse_bitwise(s))
puts s
# puts reverse(s)
