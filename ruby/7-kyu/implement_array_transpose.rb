# Implement Array Transponse!

## Task:
# Your job here is to implement Array#transpose! (which will be the bang variant of Array#transpose).
# This function returns the array received from transposing the rows and columns in a twodimensional array, and raises an error if the lengths of the subarrays don't match, or if the array is not twodimensional.
# The function you create should be able to handle sub-arrays with mixed types.
# For more info on Array#transpose, see the Ruby array docs: https://ruby-doc.org/core-2.3.0/Array.html.

# arr = [[1,2,7],[3,5,6]]
# arr.transpose # original method; returns [[1, 3], [2, 5], [7, 6]] but doesn't change arr
# arr.transpose! # your method; returns [[1, 3], [2, 5], [7, 6]] and changes arr to [[1, 3], [2, 5], [7, 6]] too
#
# arr = [[1,2,7,8],[3,5,6]]
# arr.transpose! # raises an error as subarray lengths don't match
#
# arr = [1,2,3]
# arr.transpose!

require 'rubygems'
require 'pry'

class Array
  # My answer
  def transpose!
    result = []
    self.size.times do |n|
      result << self[n].zip(self[n+1])
    end
    result
  end

  def best_transpose!
    self.replace(transpose)
  end
end

arr = [[1,2,7], [3,5,6]]
p arr.best_transpose!
p arr
