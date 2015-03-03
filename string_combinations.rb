class StringCombinations

  def initialize(string)
    @str = string
  end

  def find_combinations
    chars = @string.downcase.split('') + @string.upcase.split('')
    chars.permutation(chars.length).map(&:join)
  end
end
