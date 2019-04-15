#!/bin/env ruby
# frozen_string_literal: true

require 'rubygems'

module Nretnil
  # Translate
  class Translate
    PARSELTONGUE_MAP = {
      apologize: 'aposlogahs',
      apple: 'apsle',
      away: 'sine',
      be: 'aʃe',
      bed: 'bei∫ed',
      bird: 'tuif',
      black: 'kura',
      blue: 'vera',
      book: 'pard',
      bookshelf: 'pardshesl',
      box: 'bo∫',
      brown: 'gara',
      castle: 'vinth',
      cat: 'pelʃis',
      ceiling: 'keilsing',
      chair: 'khair',
      clock: 'tikni',
      cold: 'bana',
      color: 'slehara ',
      couch: 'koukh',
      cup: 'kups',
      day: 'dai',
      dirt: 'andi',
      do: 'dorʃe',
      dog: 'doʃe',
      drink: 'sloʃe ',
      drop: 'kaʃe',
      dry: 'sarna',
      earlier: 'suu',
      eat: 'giʃe',
      fat: 'gorna',
      field: 'girou',
      grass: 'girou',
      fish: 'dros',
      floor: 'feslure',
      flower: 'hasli',
      forest: 'riʃan',
      friend: 'fraeslis',
      frog: 'vris',
      gate: 'gatsi',
      grab: 'runʃe',
      green: 'tira',
      grow: 'hishe',
      have: 'einʃe',
      help: 'hesleuf',
      hot: 'firna',
      how: 'baʃ  ',
      human: 'ʃem',
      i: 'ai',
      in: 'rine',
      jump: 'dinʃe',
      lake: 'negei',
      lamp: 'slanp',
      large: 'ʃena',
      laying: 'sliʃe',
      leaf: 'dati',
      leave: 'slifai',
      loudly: 'kuine ',
      maybe: 'ha ',
      meal: 'nisl',
      no: 'ʃe',
      on: 'sobne',
      open: 'abna',
      orange: 'sora',
      oven: 'ovith',
      owl: 'houk',
      parchment: 'parknent',
      path: 'fasar ',
      phone: 'nesha',
      proud: 'praughs',
      purple: 'pura',
      quickly: 'ʃine',
      quietly: 'ʃane',
      quill: 'gisan',
      rat: 'rai∫e',
      red: 'ara',
      river: 'nigi',
      run: 'akaʃe',
      sit: 'rashe',
      sky: 'slan',
      slowly: 'derne',
      small: 'tina',
      smart: 'snart',
      standing: 'gariʃe',
      swim: 'kerashe',
      table: 'stabsle',
      that: 'fasi ',
      thin: 'peina',
      this: 'tasi',
      tiger: 'sekusi',
      towards: 'harne ',
      tree: 'kapi',
      under: 'athne',
      walk: 'vaʃe',
      wall: 'vasl',
      wand: 'ʃik',
      water: 'agiro',
      way: 'vei',
      wet: 'asuna',
      what: 'teʃ',
      when: 'fiʃ',
      where: 'doʃ ',
      white: ' ʃira',
      who: ' haʃ',
      why: 'vuʃ',
      window: 'vindovth',
      yellow: 'bira',
      yes: 'sa',
      yesterday: 'slu',
      you: 'ou',
      youngster: 'iangsteur'
    }.freeze

    def parseltongue_map
      PARSELTONGUE_MAP
    end

    def word_to_parseltongue(word)
      first_letter = word[0, 1]
      cap = first_letter == first_letter.upcase

      transalted_word = PARSELTONGUE_MAP[word.to_sym.downcase].nil? ? word : PARSELTONGUE_MAP[word.to_sym.downcase]

      cap ? transalted_word.capitalize : transalted_word
    end

    def self.parseltongue(text)
      translate = Translate.new
      parseltongue = '' # End result stored here
      word = ''      # Clear word text
      real = true    # We start off working on a real word

      (0..text.length).each do |i|
        char = text[i] # Get the next character

        if !char.nil? && ((char >= 'A' && char <= 'Z') || (char >= 'a' && char <= 'z') || (char == "'" && real && word != '')) # If alphabetic character

          unless real # If last not a word, then must be non-word/separator
            parseltongue += word # Append punctuation & whitespace to line
            word = '' # Clear word text
            real = true # We're working on a real word
          end

          word += char # Append alpha character to word

        else # A non-alpha character

          if real && word != '' # If word mode and a word was found
            parseltongue += translate.word_to_parseltongue(word) # Translate and Append word to result
            word = '' # Clear word text
          end

          unless char.nil?
            word += char  # Build punctuation, symbol & whitespace "word"
            real = false  # Switch to non-word/separator mode
          end

        end
      end

      parseltongue + word
    end
  end
end
