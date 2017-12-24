# Matrix Creation
# Create an identity matrix of the specified size( >= 0).
# Some examples:
# (1)  =>  [[1]]
#
# (2) => [ [1,0],
#          [0,1] ]
#
# [ [1,0,0,0,0],
#   [0,1,0,0,0],
#   (5) =>   [0,0,1,0,0],
#   [0,0,0,1,0], ]

require 'rubygems'
require 'pry'

class Integer
  # My Answer
  def matrix_creation
    result = []
    self.times do |n|
      child = Array.new(self, 0)
      child[n] = 1
      result << child
    end
    result
  end

  # Best Answer
  def best_matrix_creation
    Array.new(self) { |ir| Array.new(self) { |ic| ir == ic ? 1 : 0 } }
  end

end

p 3.best_matrix_creation
