# Two to One

# Take 2 strings s1 and s2 including only letters from ato z.
# Return a new sorted string, the longest possible, containing distinct letters,
#  each taken only once - coming from s1 or s2.
# Examples:
# a = "xyaabbbccccdefww" b = "xxxxyyyyabklmopq" longest(a, b) -> "abcdefklmopqwxy"
# a = "abcdefghijklmnopqrstuvwxyz" longest(a, a) -> "abcdefghijklmnopqrstuvwxyz"

require 'rubygems'
require 'pry'

class String
  def two_to_one(other_string)
    "#{self}#{other_string}".chars.uniq.join
  end
end

p 'aretheyhere'.two_to_one('yestheyarehere')
