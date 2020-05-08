require('rspec')
require('pry')
require('anagram')

describe("initialize") do
  it("will determine if the user input is a string") do
    set1 = Anagram.new
    set1.word1 = "test"
    expect(set1.word1).to be_instance_of(String)
  end
end

describe("word_validator") do
  it("will determine if the user inputted string is a valid word by checking for the presence of vowels") do
    set2 = Anagram.new
    set2.word1 = "test"
    expect(set2.word_validator).to(eq(true))
  end
end

describe("case_insientitive") do
  it("will determine if the case_insenitive method will change all user input to lowercase") do
    set3 = Anagram.new
    set3.word1 = "test"
    set3.case_insensitive
    expect(set3.word1).to(eq("test"))
  end
end

describe("anagram") do
  it("will determine if the .anagram method will compare two user inputs and return true if they are anagrams") do
    set4 = Anagram.new
    set4.word1 = "listen"
    set4.word2 = "silent"
    expect(set4.anagram).to(eq(true))
  end
end

describe("antigram") do
  it("will determine if the .antigram method will compare two user inputs and return true if they are antigrams") do
    set5 = Anagram.new
    set5.word1 = "yeppers"
    set5.word2 = "tip"
    expect(set5.antigram).to(eq(true))
  end
end    