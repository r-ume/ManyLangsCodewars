# Consecutive String

# You are given an array strarr of strings and an integer k. 
# Your task is to return the first longest string consisting of k consecutive strings taken in the array.
# Example: longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) --> "abigailtheta"
# n being the length of the string array, if n = 0 or k > n or k <= 0 return "".

require 'rubygems'
require 'pry'

class Array
  # My Answer
  def longest_consec(k)
    return '' if k < 0 || self.empty? || self.size < k
    self.sort_by(&:size).reverse.first(k).join('')
  end

  # Best Answer
  def best_longest_consec(k)
    return '' unless k.between?(1, self.size)
    self.each_cons(k).map(&:join).max_by(&:size) || ''
  end
end

p ["zone", "abigail", "theta", "form", "libe", "zas"].best_longest_consec(2)
