require 'set'
class WordSearch

  def initialize
    @dictionary = Set.new[10, 11, 2, 213, 20,985, 9]
    @matrix = Array.new(10){Array.new(10){rand(0...10)}}
  end

  def find_occurences
    @matrix.each{|arr| print arr; puts}

    # iterate over nested arrays
    @matrix.each_with_index do |arr ,x|
      arr.each_with_index do |num, y|

      end
    end
    # if first num found, continue searching around it in all directions
  end

  private:

  def check_all_directions(string, matrix, x, y)
    for j in -1..1
      for k in -1..1
          
      end
    end
  end

  def in_words?(substring, dictionary)
    dictionary = @dictionary.to_a
    dictionary.reduce(Hash.new(false)) do |hash, word|

    end
  end
end


ws = WordSearch.new
ws.find_occurences
