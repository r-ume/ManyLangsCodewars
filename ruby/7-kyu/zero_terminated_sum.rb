# Zero terminated sum

require 'rubygems'
require 'pry'

class String
  def zero_terminated_sum
    self.split('0').map(&:chars).reject(&:empty?).map { |element| element.map(&:to_i).sum }.sort.reverse.first.to_i
  end
end

"72102450111111090".zero_terminated_sum
