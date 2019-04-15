# frozen_string_literal: true

require 'rubygems'

module Nretnil
  # Translate
  class Translate
    ####
    # Name: shuffle
    # Description: returns same string with characters in random order
    # Arguments: string
    # Response: string
    ####
    def shuffle(word)
      word.split('').shuffle.join
    end

    ####
    # Name: first
    # Description: returns first charater of string
    # Arguments: string
    # Response: string
    ####
    def first(word)
      word[0, 1]
    end

    ####
    # Name: last
    # Description: returns last charater of string
    # Arguments: string
    # Response: string
    ####
    def last(word)
      length = word.length
      word[length - 1, length]
    end

    ####
    # Name: middle
    # Description: returns middle charaters of string.  Everything but first and last characters.
    # Arguments: string
    # Response: string
    ####
    def middle(word)
      length = word.length
      length > 2 ? word[1, length - 2] : ''
    end

    def self.scramble(text)
      translate = Translate.new
      scrambled_text = text
      words = text.gsub(%r{<\/?[^>]+>}, '').gsub(/[!@#`$%^&*()-=_+|;:",.<>?]/, '').gsub('\'s', '').split(' ').uniq

      words.each do |word|
        scrambled_word = word.length > 2 ? translate.first(word) + translate.shuffle(translate.middle(word)) + translate.last(word) : word
        scrambled_text = scrambled_text.gsub(' ' + word + ' ', ' ' + scrambled_word + ' ')
        scrambled_text = scrambled_text.gsub(word + ' ', scrambled_word + ' ')
        scrambled_text = scrambled_text.gsub(' ' + word, ' ' + scrambled_word)
      end

      scrambled_text
    end
  end
end
