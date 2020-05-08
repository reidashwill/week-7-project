class Anagram
  attr_accessor(:word1, :word2, :sentence1_array, :sentence2_array, :scan_holder)
  
  def initialize
    @word1 = word1
    @word2 = word2
    @sentence1_array = []
    @sentence2_array = []
    @scan_holder
  end

  def word_validator
    if @word1.scan(/[aeiouy]/).length == 0 || @word2.scan(/[aeouiy1234567890]/).length == 0
      false
    elsif @word1.scan(/[aeouiy]/).length >= 1 || @word2.scan(/[aeouiy]/).length >= 1
      true
    end  
  end

  def sentence_validator
    if @sentence1_array.all? {|word| word.scan(/[aeouiy]/).length >=1} == true
      @sentence2_array.all? {|word| word.scan(/[aeouiy]/).length >=1}
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

  def full_check
    if @word1.split(" ").length ==1
      if self.word_validator == true
        self.case_insensitive
        if self.anagram? == true
          puts "These are anagrams!"
          true
        elsif self.anagram? == false
          puts "These are not anagrams!  Lets check to see if they are Antigrams!"
          if self.antigram? == true
            puts "They are indeed Antigrams!"
          elsif self.antigram? == false
            puts "These are neither anagrams, nor antigrams!"  
          end
        end    
      elsif self.word_validator == false
      puts "One of your inputs contained a fake word!  Please only use real words from now on."  
      end
    elsif @word1.split(" ").length >=2 || @word2.split(" ").length >=2
      @sentence1_array = @word1.split(" ")
      @sentence2_array = @word2.split(" ")
      if self.sentence_validator == true
        self.space_remover
        self.case_insensitive
        if self.anagram? == true
          puts "These are anagrams!"
          true
        elsif self.anagram? == false
          puts "These are not anagrams!  Lets check to see if they are Antigrams!"
          if self.antigram? == true
            puts "They are indeed Antigrams!"
          elsif self.antigram? == false
            puts "These are neither anagrams, nor antigrams!"  
          end
        end 
      elsif self.sentence_validator == false
        puts "One of your inputs contained a fake word!  Please only use real words from now on."
      end  
    end 
  end
end 
