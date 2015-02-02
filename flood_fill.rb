# This is an attempt to solve the 3D 23-directional Flood Fill Problem
# if X, do nothing, if Y, change to Z

def flood_fill(matrix, x, y ,z)

  # Bounds check
  if [x,y,z].select{|n| n<0 || n>=matrix.length}.size > 0
    return
  end
  # Do nothing check
  if ['X','Z'].include?(matrix[x][y][z])
    return
  end
  # To fill check
  if matrix[x][y][z] =="Y"
    matrix[x][y][z] = "Z"
    puts "#{x},#{y},#{z}"
  end
  # Recurrsive call
  for x_d in -1..1
    for y_d in -1..1
      for z_d in -1..1
        if x+x_d!=x && y+y_d!=0 && z+z_d!=0
          flood_fill(matrix, x+x_d, y+y_d, z+z_d)
        end
      end
    end
  end
end

matrix = Array.new(10) { Array.new(10) { Array.new(10) }}
chars = ['X','Y']
for x in 0...matrix.length
  for y in 0...matrix.length
    for z in 0...matrix.length
      matrix[x][y][z] = chars[rand(chars.length)]
    end
  end
end

flood_fill(matrix, 2,2,2)
