# SillyCASE

# Create a function that takes a string and returns that string with the first half lowercased and the last half uppercased.
# eg: foobar == fooBAR
#
# If it is an odd number then 'round' it up to find which letters to uppercase. See example below.

require 'rubygems'
require 'pry'

class String
  def silly_case
    middle_index = self.length % 2 == 0 ? self.length / 2 : self.length / 2 + 1
    "#{self.slice(0, middle_index).downcase}#{self.slice(middle_index, self.length).upcase}"
  end
end

p 'brian'.silly_case
