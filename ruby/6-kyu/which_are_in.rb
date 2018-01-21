# Which are in?

# Given two arrays of strings a1 and a2
# return a sorted array r in lexicographical order of the strings of a1 which are substrings of strings of a2.

#Example 1:
# a1 = ["arp", "live", "strong"]
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

# returns ["arp", "live", "strong"]

#Example 2:
# a1 = ["tarp", "mice", "bull"]
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

# returns []
#
# Notes:
# Arrays are written in "general" notation. See "Your Test Cases" for examples in your language.
# In Shell bash a1 and a2 are strings. The return is a string where words are separated by commas.
# Beware: r must be without duplicates.

require 'rubygems'
require 'pry'

# My Answer
def in_array(array1, array2)
  array2.map { |element2|
    array1.select { |element1| element2.include?(element1) }
  }.flatten.uniq.sort
end

a1 = %w(oint he ing wh oes ve pini by)
a2 = %w(reference quest a the am here out I updated 1.9? ions that should your somewhere Ruby browse ruby-doc known what)
p in_array(a1, a2)

# Best Answer
def best_in_array(array1, array2)
  array1.select{ |s| array2.any?{ |w| w.include?(s) } }.sort
end
