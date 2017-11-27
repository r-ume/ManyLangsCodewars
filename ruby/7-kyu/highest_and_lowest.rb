# Highest and Lowest

=begin
In this little assignment you are given a string of space separated numbers,
and have to return the highest and lowest number.

high_and_low("1 2 3 4 5")  # return "5 1"
high_and_low("1 2 -3 4 5") # return "5 -3"
high_and_low("1 9 3 4 -5") # return "9 -5"
=end

require 'rubygems'
require 'pry'

class String
  # My Answer
  def highest_and_lowest
    "#{self.split(' ').map(&:to_i).sort.reverse.first} #{self.split(' ').map(&:to_i).sort.first}"
  end

  # Best Answer
  def first_best_highest_and_lowest
    self.split.map(&:to_i).minmax.reverse.join(' ')
  end

end

p "1 3 4 -9 0".first_best_highest_and_lowest
