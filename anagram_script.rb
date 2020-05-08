#!/usr/bin/ruby
require ('./lib/anagram')

anagram = Anagram.new
puts "
    ██     ██ ███████ ██       ██████  ██████  ███    ███ ███████ ██                 
    ██     ██ ██      ██      ██      ██    ██ ████  ████ ██      ██                 
    ██  █  ██ █████   ██      ██      ██    ██ ██ ████ ██ █████   ██                 
    ██ ███ ██ ██      ██      ██      ██    ██ ██  ██  ██ ██                         
     ███ ███  ███████ ███████  ██████  ██████  ██      ██ ███████ ██                 
                                                                                 
  ███    ███ ██    ██     ███    ██  █████  ███    ███ ███████     ██ ███████      
  ████  ████  ██  ██      ████   ██ ██   ██ ████  ████ ██          ██ ██           
  ██ ████ ██   ████       ██ ██  ██ ███████ ██ ████ ██ █████       ██ ███████      
  ██  ██  ██    ██        ██  ██ ██ ██   ██ ██  ██  ██ ██          ██      ██      
  ██      ██    ██        ██   ████ ██   ██ ██      ██ ███████     ██ ███████      
                                                                                 
 ██████  ██████  ███    ███ ██████  ██    ██ ████████ ██████   ██████  ███    ██ 
██      ██    ██ ████  ████ ██   ██ ██    ██    ██    ██   ██ ██    ██ ████   ██ 
██      ██    ██ ██ ████ ██ ██████  ██    ██    ██    ██████  ██    ██ ██ ██  ██ 
██      ██    ██ ██  ██  ██ ██      ██    ██    ██    ██   ██ ██    ██ ██  ██ ██ 
 ██████  ██████  ██      ██ ██       ██████     ██    ██   ██  ██████  ██   ████ 
                                                                                 
   I can tell you many things, but today i would like to talk about anagrams!
   Before we begin, i would just like to remind you that I am a computer.  
   Please follow my instructions closely or we might not get along very well!

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The rules are simple:  Tell me two of your favorite words or phrases and I will
tell you if they are anagrams, antigrams, or neigther.  My processing unit is busy
 doing many things.  DO NOT waste my time with frivilous inputs.  English words only.

Please tell me your favorite word or phrase!"
anagram.word1 = gets.chomp
puts "Please tell me your second favorite word or phrase!"
anagram.word2 = gets.chomp
puts "you chose '#{anagram.word1}' and '#{anagram.word2}'!"

anagram.full_check

puts"
████████ ██   ██  █████  ███    ██ ██   ██     ██    ██  ██████  ██    ██ 
   ██    ██   ██ ██   ██ ████   ██ ██  ██       ██  ██  ██    ██ ██    ██ 
   ██    ███████ ███████ ██ ██  ██ █████         ████   ██    ██ ██    ██ 
   ██    ██   ██ ██   ██ ██  ██ ██ ██  ██         ██    ██    ██ ██    ██ 
   ██    ██   ██ ██   ██ ██   ████ ██   ██        ██     ██████   ██████  
                                                                          
    ███████  ██████  ██████      ██████  ███████ ██ ███    ██  ██████         
    ██      ██    ██ ██   ██     ██   ██ ██      ██ ████   ██ ██              
    █████   ██    ██ ██████      ██████  █████   ██ ██ ██  ██ ██   ███        
    ██      ██    ██ ██   ██     ██   ██ ██      ██ ██  ██ ██ ██    ██        
    ██       ██████  ██   ██     ██████  ███████ ██ ██   ████  ██████         
                                                                          
    ███    ███ ██    ██     ███████ ██████  ██ ███████ ███    ██ ██████       
    ████  ████  ██  ██      ██      ██   ██ ██ ██      ████   ██ ██   ██      
    ██ ████ ██   ████       █████   ██████  ██ █████   ██ ██  ██ ██   ██      
    ██  ██  ██    ██        ██      ██   ██ ██ ██      ██  ██ ██ ██   ██      
    ██      ██    ██        ██      ██   ██ ██ ███████ ██   ████ ██████       
                                                                      
"