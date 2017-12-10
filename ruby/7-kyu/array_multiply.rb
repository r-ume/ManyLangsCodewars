=begin
You received an array with two strings.
Create a function that will return their product as a string. E.g.

arrMultiply(['9','6']) should return '54'
=end

require 'rubygems'
require 'pry'

class Array
  def multiply
    self.map(&:to_i).inject(:*)
  end
end

['9', '6'].multiply
