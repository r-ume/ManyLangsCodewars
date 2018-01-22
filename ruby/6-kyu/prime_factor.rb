# Prime factors

# Prime Factors
# Inspired by one of Uncle Bob's TDD Kata
# Write a function that generates factors for a given number.
# The function takes an integer on the standard input and returns a list of integers (ObjC: array of NSNumbers representing integers).
# That list contains the prime factors in numerical sequence.
# Example
# 1 -> []
# 3 -> [3]
# 8 -> [2, 2, 2]
# 9 -> [3, 3]
# 12 -> [2, 2, 3]

require 'rubygems'
require 'pry'
require 'prime'

class Integer
  # Best Answer
  def prime_factors
    self.prime_division.flat_map { |prime, amt| [prime] * amt }
  end
end

p 10.prime_factors
