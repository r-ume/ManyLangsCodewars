# Iterate

# Write the method Object#iterate that given an object takes a block as argument and an optional count n.
# If n is given,
# it returns an array of length n where each element can obtained by the successive application of the block on the object, starting with the object.
# It will be clearer with an example:
# 'str'.iterate(3) {|s| s * 2 } # => ["str", "strstr", "strstrstrstr"]
# If n is not given, it returns an Enumerator that yields the successive application of the block on the object indefinitly.

require 'rubygems'
require 'pry'

class Object
  def my_iterate(num, &block)
    initial = self
    result = [self]
    num.times do |n|
      initial = block.call(self)
      result << block.call(initial)
    end
    result
  end

  def best_iterate(n = nil, &f)
    return iterate(&f).take(n) if n
    a = self
    Enumerator.new(n) do |y|
      loop do
        y << a
        a = yield a
      end
    end
  end
end

p 'str'.iterate(3) { |str| str * 2 }
