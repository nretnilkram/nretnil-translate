require 'rubygems'

module Nretnil
  class Translate

    VOWELS = "AEIOUaeiou"     # Standard English vowels
    VOWELSY = "AEIOUaeiouYy"  # Sometimes "Y" and "W", but only "Y" here
    WAY = "way"               # Vowel word suffix
    AY = "ay"                 # Consonant word suffix
    LEARNMODE = false         # Learn Mode Default

    def word_to_pig_latin (word, learn_mode = LEARNMODE)

      first_letter = word[0,1]
      cap = first_letter == first_letter.upcase ? true : false
      suffix = ""

      if !VOWELS.index(first_letter).nil? # If word starts with a vowel
        suffix = WAY
        last_letter = word[((word.length)-1),word.length]  # Get last char of word

        if (last_letter == last_letter.upcase) # && word.length > 1)
          suffix = WAY.upcase  # Make suffix upcase to match
        end

      else

        if (word != word.upcase)  # If not all caps
          first_letter = first_letter.downcase  # Format for display
        end

        count = word.length  # Only process n characters

        while ( count-=1 ) do

          suffix += first_letter  # Build suffix with leading consonants
          last_letter = first_letter  # Save last character (for "qu" testing)

          cap_flag = (first_letter == first_letter.upcase) ? true : false  # Capitalize flag

          word = word[1, word.length]  # Remove first/next char of word
          first_letter = word[0,1]  # Get next/first char of new word

          if !VOWELSY.index(first_letter).nil? # Vowel signals end
            if (!((last_letter == "q" || last_letter == "Q") && (first_letter == "u" || first_letter == "U")))  # Check for "qu"
              break  # Quit loop if we hit a vowel or "y" (unless "qu")
            end
          end

        end

        if (cap_flag)  # If the first char of the new word is capitalized
          suffix += AY.upcase
        else
          suffix += AY
        end

      end

      word += (learn_mode ? "-" : "") + suffix  # Put final translated word together

      if (cap)  # If original word was capitalized…
        first_letter = word[0,1]
        word = first_letter.upcase + word[1, word.length]
      end

      return word

    end

    def self.pig_latin(text, learn_mode = LEARNMODE)

      translate = Translate.new
      sNewline = "\n"  # Other systems use this for New Line (Mac, etc.)
      pig_latin = ""  # End result stored here
      word = ""      # Clear word text
      real = true    # We start off working on a real word

      for i in 0..text.length

        char = text[i]  # Get the next character

        if !char.nil? && ((char >= "A" && char <= "Z") || (char >= "a" && char <= "z") || (char == "'" && real && word != ""))  # If alphabetic character

          if (!real)  # If last not a word, then must be non-word/separator
            pig_latin += word  # Append punctuation & whitespace to line
            word = ""  # Clear word text
            real = true  # We're working on a real word
          end

          word += char  # Append alpha character to word

        else  # A non-alpha character

          if (real && word != "") # If word mode and a word was found
            pig_latin += translate.word_to_pig_latin(word, learn_mode)  # Translate and Append word to result
            word = ""  # Clear word text
          end

          if !char.nil?
            word += char  # Build punctuation, symbol & whitespace "word"
            real = false  # Switch to non-word/separator mode
          end

        end

      end

      return pig_latin += word

    end

  end
end