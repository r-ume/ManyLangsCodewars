# Odd Heavy

# Array [11,4,9,2,8] is odd-heavy
# because:- its odd elements [11,9] are greater than all the even elements [4,2,8]
#
# Array [11,4,9,2,3,10] is not odd-heavy
# because:- one of it's even element 10 from [4,2,10] is greater than two of its odd elements [9,3] from [ 11,9,3]

require 'rubygems'
require 'pry'

class Array
  # My Answer
  def odd_heavy?
    return false if self.all?(&:even?)
    odd_array = self.select(&:odd?)
    even_array = self - odd_array
    odd_array.all? { |odd| even_array.all? { |even| odd > even } }
  end

  # Best Answer
  def best_odd_array?
    even, odd = self.partition(&:even?)
    return false if odd.empty?
    return true if even.empty?
    odd.min > even.max
  end
end

p [0, 2, 19, 4, 4].odd_heavy?
p [1, -2, -1, 2].odd_heavy?
