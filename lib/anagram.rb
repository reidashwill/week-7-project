class Anagram
  attr_accessor(:word1, :word2)
  
  def initialize()
    @word1 = word1
    @word2 = word2
  end

  def word_validator
    if @word1.scan(/[aeoui]/).length <= 0
      false
    elsif @word1.scan(/[aeoui]/).length >= 1
      true
    end  
  end

  def case_insensitive
    @word1.downcase!
  end
  
  def anagram
    if @word1.split('').sort.join == @word2.split('').sort.join
      true
    else
      false
    end
  end 
end    