# In this Kata, you will be given an array and your task will be to determine if an array is in ascending or descending order and if it is rotated or not.
#
# Consider the array [1,2,3,4,5,7,12].
# This array is sorted in Ascending order.
# If we rotate this array once to the left, we get [12,1,2,3,4,5,7] and twice-rotated we get [7,12,1,2,3,4,5].
# These two rotated arrays are in Rotated Ascending order.
#
# Similarly, the array [9,6,5,3,1] is in Descending order, but we can rotate it to get an array in Rotated Descending order: [1,9,6,5,3] or [3,1,9,6,5] etc.
#
# Arrays will never be unsorted, except for those that are rotated as shown above.
# Arrays will always have an answer, as shown in the examples below.

# solve([1, 2, 3, 4, 5, 7]) = "A" -- Ascending
# solve([7, 1, 2, 3, 4, 5]) = "RA" -- Rotated ascending
# solve([4, 5, 6, 1, 2, 3]) = "RA" -- Rotated ascending
# solve([9, 8, 7, 6]) = "D" -- Descending
# solve([5, 9, 8, 7, 6]) = "RD" -- Rotated Descending

# More examples in the test cases.
# Good luck!

require 'rubygems'
require 'pry'

class Array
  def solve
    sorted_array = self.sort
    return 'A' if self == sorted_array
    return 'D' if self == sorted_array.reverse
    return 'RA' if self.index(self.min) + 1 == self.index(sorted_array[1])
    'RD'
  end

  # best answer
  def best_solve
    if self.sort == self
      'A'
    elsif self.sort { |a, b| b <=> a } == self
      'D'
    elsif self.first > self.last
      'RA'
    else
      'RD'
    end
  end
end

p [592, 909, 1, 9, 101, 212, 246, 250, 251, 260, 393].solve
