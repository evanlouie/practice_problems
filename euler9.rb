require 'yaml'
class Euler9
  attr_accessor :a, :b, :c

  def initialize
    @a,@b,@c = 1,1,1
    @product = 1000
  end


  def run
    for a in (1..500)
      for b in (1.500)
        for c in (1..500)

        end
      end
    end
  end

end

main = Euler9.new
main.run
puts YAML::dump(main)
