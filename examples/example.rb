require 'rubygems'
require 'nretnil-translate'


puts "<h3>Translate</h3>"
puts "\n"

puts "```ruby"
puts "\n"

text = "Pangram anyone? A quick brown fox jumped over the lazy dog. Pack my box with five dozen liquor jugs. A quick movement of the enemy will jeopardize six gunboats. The five boxing wizards jump quickly."

puts "text=#{text}\n\n"

puts "Nretnil::Translate.pig_latin(text)"
puts "# => " + Nretnil::Translate.pig_latin(text).to_s
puts "\n"

puts "Nretnil::Translate.pig_latin(text,learn_mode=true)"
puts "# => " + Nretnil::Translate.pig_latin(text,learn_mode=true).to_s
puts "\n"

puts "```"
puts "\n"
