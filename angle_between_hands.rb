def  angleBetweenHands( time)
  t = time.split(':')
  if t[0].length != 2 || t[1].length !=2 || t[0].to_i > 24 || t[1].to_i >60 || t[0].to_i < 0 || t[1].to_i <0
    raise ArgumentError, "error: invalid time format"
  end
  hours = t[0]%12
  minutes = t[1]

  big = (hours.to_f/12.0)
  small = minutes.to_f/60

  big_angle = (big*360.0).to_i
  small_angle = (small*360.0).to_i

  (big_angle-small_angle)%180
  if (big_angle-small_angle).abs > 180
    return ((360 - ((small_angle-big_angle)%360))%180).abs
  else
    return ((big_angle-small_angle)%180).abs
  end
end

puts angleBetweenHands('24:00')
