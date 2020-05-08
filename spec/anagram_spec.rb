require('rspec')
require('pry')
require('anagram')

describe("string_check") do
  it("will return true if the user input is a string") do
    set1 = Anagram.new("test")
    expect(set1.user_input).to be_instance_of(String)
  end
end