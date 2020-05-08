require('rspec')
require('pry')
require('anagram')

describe("initialize") do
  it("will determine if the user input is a string") do
    set1 = Anagram.new("test")
    expect(set1.word1).to be_instance_of(String)
  end
end

describe("word_validator") do
  it("will determine if the user inputted string is a valid word by checking for the presence of vowels") do
    set2 = Anagram.new("test")
    expect(set2.word_validator).to(eq(true))
  end
end