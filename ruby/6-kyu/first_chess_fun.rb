# Chess Fun #1
# Given two cells on the standard chess board, determine whether they have the same color or not.
# For cell1 = "A1" and cell2 = "C3", the output should be true.
# For cell1 = "A1" and cell2 = "H3", the output should be false.

# [input] string cell1
# [input] string cell2
# [output] a boolean value
# true if both cells have the same color, false otherwise.

require 'rubygems'
require 'pry'

class String
  # My Answer
  def chessboard_cell_color(cell)
    alphabet = %w(A B C D E F G H).map(&:freeze).freeze

    alphabet_index = 0
    number_index = 1

    return (self[number_index].to_i.odd? == cell[number_index].to_i.odd?) == (alphabet.index(self[alphabet_index]).odd? == alphabet.index(cell[alphabet_index]).odd?)
  end

  # Best Answer
  def first_best_chessboard_cell_color(cell)
    chess_board = ('A'..'H').to_a.product(('1'..'9').to_a)
    chess_board.index(self.chars).even? == chess_board.index(cell.chars).even?
  end
end

"A1".first_best_chessboard_cell_color("C3")
