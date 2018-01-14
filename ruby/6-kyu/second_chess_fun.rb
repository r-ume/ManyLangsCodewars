# Second Chess Fun

# Task
# Given the positions of a white bishop and a black pawn on the standard chess board,
#   determine whether the bishop can capture the pawn in one move.
#
# The bishop has no restrictions in distance for each move,
#   but is limited to diagonal movement. Check out the example below to see how it can move

# Example
# For bishop = "a1" and pawn = "c3", the output should be true.
# For bishop = "h1" and pawn = "h3", the output should be false.

# Input/Output
# [input] string bishop
# Coordinates of the white bishop in the chess notation.
# [input] string pawn
# Coordinates of the black pawn in the same notation.
# [output] a boolean value
# true if the bishop can capture the pawn, false otherwise.

require 'rubygems'
require 'pry'

class String
  def second_chess_fun(cell)
    chess_board = ('a'..'h').to_a.product(('1'..'9').to_a)
    return false if self[0] == cell[0] || self[1] == cell[1]
    chess_board.index(self.chars).even? == chess_board.index(cell.chars).even?
  end

  # Best Answer
  def best_second_chess_fun(cell)
    pattern = %w(a b c d e f g h)
    pos_diff = self[-1].to_i - cell[-1].to_i
    idx_diff = pattern.index(self[0]) - pattern.index(cell[0])
    pos_diff.abs == idx_diff.abs
  end
end

p "a1".best_second_chess_fun("c3")

