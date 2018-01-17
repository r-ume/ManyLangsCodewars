# In input string word(1 word):
#
# replace the vowel with the nearest left consonant.
# replace the consonant with the nearest right vowel.
# P.S. To complete this task imagine the alphabet is a circle (connect the first and last element of the array in the mind). For example, 'a' replace with 'z', 'y' with 'a', etc.(see below)
#
# For example:
#
#   'codewars' => 'enedazuu'
#   'cat' => 'ezu'
#   'abcdtuvwxyz' => 'zeeeutaaaaa'
#
# It is preloaded:
#   alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
#   consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z'];
#   vowels = ['a','e','i','o','u'];

require 'rubygems'
require 'pry'

# Best Answer
ALPHABET = [*'a'..'z']
CONSONANTS = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
VOWELS = ['a','e','i','o','u']

def best_replace_letters(word)
  word.chars.map do |c|
    index = ALPHABET.index(c)
    if VOWELS.include?(c)
      until CONSONANTS.include?(c)
        index -= 1
        c = ALPHABET[index]
      end
    else
      until VOWELS.include?(c)
        index < 25 ? index += 1 : index = 0
        c = ALPHABET[index]
      end
    end
    c
  end
      .join
end

# Clever Answer
def clever_replace_letters(word)
  word.tr('abcdefghijklmnopqrstuvwxyz', 'zeeediiihooooonuuuuutaaaaa')
end

p replace_letters('codewars')
