# Sum of nested list

=begin
  Implement a function to calculate the sum of the numerical values in a nested list.
  sum_nested([1, [2, [3, [4]]]]) -> 10
=end

class Array

  # My Answer
  def sum_nested
    flattened_array = self.flatten
    flattened_array.empty? ? 0 : flattened_array.inject(:+)
  end

  # First Best Answer
  def first_best_sum_nested
    self.flatten.inject(:+) || 0
  end

  # Second Best Answer
  def second_best_sum_nested
    self.flatten.inject(0, :+)
  end

end

([1, [2, [3, [4]]]]).sum_nested


