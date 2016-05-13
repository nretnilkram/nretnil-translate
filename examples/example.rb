# encoding: utf-8
# frozen_string_literal: true
require 'rubygems'
require 'nretnil-translate'

puts '<h3>Pig Latin Translate</h3>'
puts '<p>This will take each work in your text and translate it into Pig Latin.</p>'

puts "\n"

puts '```ruby'
puts "\n"

text = 'Pangram anyone? A quick brown fox jumped over the lazy dog. Pack my box with five dozen liquor jugs. A quick movement of the enemy will jeopardize six gunboats. The five boxing wizards jump quickly.'

puts "text=#{text}\n\n"

puts 'Nretnil::Translate.pig_latin(text)'
puts '# => ' + Nretnil::Translate.pig_latin(text).to_s
puts "\n"

puts 'Nretnil::Translate.pig_latin(text, true)'
puts '# => ' + Nretnil::Translate.pig_latin(text, true).to_s
puts "\n"

puts '```'
puts "\n"

puts '<h3>Scramble Translate</h3>'
puts '<p>This will take each work in your text and manipulate it by keeping the first and last letter the same and scrambling the middle of it.  This should keep the text readable.</p>'
puts "\n"

puts '```ruby'
puts "\n"

puts "text=#{text}\n\n"

puts 'Nretnil::Translate.scramble(text)'
puts '# => ' + Nretnil::Translate.scramble(text).to_s
puts "\n"

puts '```'
puts "\n"
