# Max Min Array

=begin
In this Kata, you will be given an array of unique elements, and your task is to rerrange the values
so that the first max value is followed by the first minimum, followed by second max value then second min value, etc.
=end

require 'pry'

class Array
  def best_max_min
    self.sort.reverse.zip(self.sort).flatten.first(self.length)
  end

  def second_max_min
    descending = self.sort
    ascending = self.sort.reverse
    ascending.zip(descending).flatten.uniq
  end

  def third_max_min
    result = []
    binding.pry
    sort_arr = self.sort_by(&:to_i)

    for i in self
      i = sort_arr.pop
      x = sort_arr.shift
      result.push(i)
      result.push(x)
    end

    result.compact
  end

end

[15,11,10,7,12].third_max_min

