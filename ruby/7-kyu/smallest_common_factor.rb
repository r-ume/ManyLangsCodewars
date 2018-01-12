# Get The Smallest Common Factor
# # Given an array of integers, return the smallest common factors of all integers in the array.
# When i say Smallest Common Factor i mean the smallest number above 1 that can divide all numbers in the array without a remainder.

# scf([200, 30, 18, 8, 64, 34]) //=> 2
# scf([21, 45, 51, 27, 33]) //=> 3
# scf([133, 147, 427, 266]) //=> 7

# If ther'e no common factors above 1, return 1 (technically 1 is always a common factor).
# (In Ruby, return -1 if there's not common factor)

require 'rubygems'
require 'pry'

class Array
  # Best Answer
  def smallest_common_factor
    (2..self.min).each{ |i|
      return i if arr.all? { |e| e % i == 0 }
    };
    -1
  end
end


