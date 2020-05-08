class Anagram
  attr_accessor(:word1, :word2)
  
  def initialize()
    @word1 = word1
    @word2 = word2
  end

  def word_validator
    if @word1.scan(/[aeoui]/).length <= 0 || @word2.scan(/[aeoui]/).length <= 0
      false
    elsif @word1.scan(/[aeoui]/).length >= 1 || @word2.scan(/[aeoui]/).length >= 1
      true
    end  
  end

  def case_insensitive
    @word1.downcase!
    @word2.downcase!
  end
  
  def anagram?
    if @word1.split('').sort.join == @word2.split('').sort.join
      true
    else
      false
    end
  end 

  def antigram?
    if
      @word1.scan(/[#{word2}]/).length <= 0
      true
    elsif
      @word1.scan(/[#{word2}]/).length >= 0
      false
    end
  end

  def space_remover
    @word1.delete!(' ')
    @word2.delete!(' ')
  end

  def sentence_check
    if @word1.split(" ").length >=2 || @word2.split(" ").length >=2
      true
    elsif @word1.split(" ").length == 1 || @word2.split(" ").length == 1
      false
    end
  end

  def full_check
    if self.word_validator == true
      self.case_insensitive
      if self.anagram? == true
        puts "these are anagrams!"
      elsif self.antigram? == true
        puts "these are antigrams!"
      else
        puts "these are not anagrams or antigrams!"
      end
    elsif self.word_validator == false
      puts "One of your inputs is not a valid word!  Please only use real words"
    end
  end
end 
