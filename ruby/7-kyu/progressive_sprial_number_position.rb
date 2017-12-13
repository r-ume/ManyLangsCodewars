# Progressive Sprial Number Position

# Assume that you started to store items in progressively expanding square location, like this for the first 9 numbers:

# 05 04 03
# 06 01 02
# 07 08 09

# And like this for the expanding to include up to the first 25 numbers:
#
# 17 16 15 14 13
# 18 05 04 03 12
# 19 06 01 02 11
# 20 07 08 09 10
# 21 22 23 24 25

# You might easily notice that the first
# - and innermost - layer containes only one number (01),
# the second one - immediately around it - contains 8 numbers (number in the 02-09 range) and so on.
# Your task is to create a function that given a number n simply returns the number of layers required to store up to n (included).

# layers(1) === 1
# layers(5) === 2
# layers(25) === 3
# layers(30) === 4
# layers(50) === 5

# 37 36 35 34 33 32 31
# 38 17 16 15 14 13 30
# 39 18 05 04 03 12 29
# 40 19 06 01 02 11 28
# 41 20 07 08 09 10 27
# 42 21 22 23 24 25 26
# 43 44 45 46 47 48 49

require 'rubygems'
require 'pry'

class Integer
  # My Answer
  def layer
    loop = true
    n = 0
    while loop
      self.between?((n + 1)**2, (n + 3)**2) ? loop = false : n += 2
    end
    self.between?((n + 1)**2, (n + 3)**2) ? n : n -1
  end

  # Best Answer
  def best_layers
    layer, a = 1, 1
    while a**2 < self
      layer += 1
      a += 2
    end
    layer
  end

  def second_best_layers
    (self ** 0.5).ceil / 2 + 1
  end
end

50.second_best_layers
