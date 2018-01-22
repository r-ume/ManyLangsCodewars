# Find the parity outlier
# You are given an array (which will have a length of at least 3, but could be very large) containing integers.
# The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N.
# Write a method that takes the array as an argument and returns this "outlier" N.

require 'rubygems'
require 'pry'

# My Answer
def find_outlier(integers)
  even, odd = integers.partition(&:even?)
  return odd.first if even.size > odd.size
  return even.first if odd.size > even.size
end

# Best Answer
def best_find_outlier(integers)
  integers.partition(&:odd?).find(&:one?).first
end

p find_outlier([2, 4, 0, 100, 4, 11, 2602, 36])
