def  lonelyinteger( a)
    mem_map = Hash.new
    a[0..a.length-1].each{|i| mem_map[i] = 0}
    a[0..a.length-1].each do |i|
        mem_map[i] += 1
    end
    return mem_map.key(1)
end

puts lonelyinteger((0..10).to_a.push(10))
