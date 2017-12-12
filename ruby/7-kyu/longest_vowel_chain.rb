# The vowel substrings in the word codewarriors are o,e,a,io.
# The longest of these has a length of 2.
# Given a lowercase string that has alphabetic characters only and no spaces, return the length of the longest vowel substring.
#

require 'rubygems'
require 'pry'

class String
  # My Answer
  def longest_vowel_chain_num
    vowel_chain_array = []
    vowel_chain_num = 0
    self.chars.each_with_index do |_, index|
      if %w(a i u e o).include?(self.chars[index + 1])
        vowel_chain_num += 1
      else
        vowel_chain_array.push(vowel_chain_num)
        vowel_chain_num = 0
      end
    end
    p vowel_chain_array.max
  end

  # Best Answer
  def best_longest_vowel_chain_num
    self.split(/[^aieou]+/).map(&:size).max
  end
end

# My Answer
"iiihoovaeaaaoougjyaw".longest_vowel_chain_num

# Best Answer
"iiihoovaeaaaoougjyaw".best_longest_vowel_chain_num
