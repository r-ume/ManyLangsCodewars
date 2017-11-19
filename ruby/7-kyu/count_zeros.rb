# Count number of zeros from 1 to N\

=begin
Create an algorithm to count the number of zeros that appear between 1 and N.
Examples:
There are 2 zeros from 1 to 20: 10, 20
There are 11 zeros from 1 to 100: 10, 20, 30, 40, 50, 60, 70, 80, 90, 100

countZeros(10); // returns 1
countZeros(100); // returns 11
countZeros(200); // returns 31
=end

require 'rubygems'
require 'pry'

class Integer
  # My Answer
  def count_zeros
    (10..self).to_a.join.count('0')
  end

  # Other Answers
  def first_count_zeros
    (1..n).to_a.each.map{ |i| i.to_s.chars }.flatten.count('0')
  end
end

100.count_zeros

