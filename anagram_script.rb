#!/usr/bin/ruby
require ('./lib/anagram')
anagram = Anagram.new
puts "My name is COMPUTRON"
puts "I can tell you many things, but today i would like to talk about anagrams!"
puts "please tell me your favorite word!"
anagram.word1 = gets.chomp
puts "please tell me your second favorite word!"
anagram.word2 = gets.chomp
puts "you chose #{anagram.word1} and #{anagram.word2}!"

anagram.full_check