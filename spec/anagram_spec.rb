require('rspec')
require('pry')
require('anagram')

describe("Anagram #initialize") do
  it("will determine if the user input is a string") do
    set1 = Anagram.new
    set1.word1 = "test"
    expect(set1.word1).to be_instance_of(String)
  end
end

describe("Anagram #word_validator") do
  it("will determine if the user inputted string is a valid word by checking for the presence of vowels") do
    set2 = Anagram.new
    set2.word1 = "test"
    set2.word2 = "test"
    expect(set2.word_validator).to(eq(true))
  end
end

describe("Anagram #case_insientitive") do
  it("will determine if the case_insenitive method will change all user input to lowercase") do
    set3 = Anagram.new
    set3.word1 = "Test"
    set3.word2 = "HaRpY"
    set3.case_insensitive
    expect(set3.word1).to(eq("test"))
    expect(set3.word2).to(eq("harpy"))
  end
end

describe("Anagram #anagram") do
  it("will determine if the .anagram method will compare two user inputs and return true if they are anagrams") do
    set4 = Anagram.new
    set4.word1 = "listen"
    set4.word2 = "silent"
    expect(set4.anagram?).to(eq(true))
  end
end

describe("Anagram #antigram") do
  it("will determine if the .antigram method will compare two user inputs and return true if they are antigrams") do
    set5 = Anagram.new
    set5.word1 = "hi"
    set5.word2 = "bud"
    expect(set5.antigram?).to(eq(true))
  end
end

describe("Anagram #space_remover") do
  it("will remove spaces from multiple word strings so they can be compared using the existing methods") do
    set6 = Anagram.new
    set6.word1 = "this is a string"
    set6.word2 = "this is also a string"
    set6.space_remover
    expect(set6.word1).to(eq("thisisastring"))
    expect(set6.word2).to(eq("thisisalsoastring"))
  end
end

describe("Anagram #space_remover # anagram") do
  it("will combine space_remover and anagram methods to comapare two multiple word strings and determine if they are anagrams") do
    set7 = Anagram.new
    set7.word1 = "the eyes"
    set7.word2 = "they see"
    set7.space_remover
    expect(set7.anagram?).to(eq(true))
  end
end



describe("Anagram #full_check") do
  it("will return true if full check is able to call on word_validator") do
    set9 = Anagram.new
    set9.word1 = "yes"
    set9.word2 = "yes"
    expect(set9.full_check).to(eq(true))
  end
end

describe("Anagram #sentence_validator") do
  it("will return true if all words in sencence are valid words") do
    set10 = Anagram.new
    set10.sentence1_array = ["this", "is", "n", "test"]
    expect(set10.sentence_validator).to(eq(true)) 
  end
end