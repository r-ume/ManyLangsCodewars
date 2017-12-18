# Reversing Fun

# You are going to be given a string. Your job is to return that string in a certain order that I will explain below:
# Let's say you start with this: 012345

# The first thing you do is reverse it:543210
# Then you will take the string from the 1st position and reverse it again:501234
# Then you will take the string from the 2nd position and reverse it again:504321
# Then you will take the string from the 3rd position and reverse it again:504123

# Continue this pattern until you have done every single position, and then you will return the string you have created.
# For this particular number, you would return:504132

#Input: A string of length 1 - 1000
#Output: A correctly reordered string.

require 'rubygems'
require 'pry'

class String
  def reversing_fun
    reversed = self.chars.reverse
    1.upto(reversed.size) do |n|
      suffix = reversed.pop
      reversed.insert(n, suffix).join
    end
  end

  def best_reversing_fun
    chars = self.chars
    midpoint = self.length / 2
    chars[midpoint..-1].reverse.zip(chars[0...midpoint]).join
  end
end

'4ppso1vdjc9rjyf5bkmd5nztr8'.best_reversing_fun

# 543210
# 501234
# 504321
# 504123
# 504132
