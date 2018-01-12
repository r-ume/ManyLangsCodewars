# Build Tower
# Build Tower
# Build Tower by the following given argument:
# number of floors (integer and always greater than 0).
#
# Tower block is represented as *
#
# Python: return a list;
# JavaScript: returns an Array;
# C#: returns a string[];
# PHP: returns an array;
# C++: returns a vector<string>;
# Haskell: returns a [String];
# Ruby: returns an Array;
# Have fun!
#
# for example, a tower of 3 floors looks like below
#
# [
#     '  *  ',
#     ' *** ',
#     '*****'
# ]
# and a tower of 6 floors looks like below
#
# [
#     '     *     ',
#     '    ***    ',
#     '   *****   ',
#     '  *******  ',
#     ' ********* ',
#     '***********'
# ]

class Integer
  def build_tower
    Array.new(self){ |i| ('*' * (2 * i + 1)).center(2 * self - 1) }
  end

  # Best Answer
  def best_build_tower
    (0 ... self).map{ |i| ('*' * (2 * i + 1)).center(2 * self - 1) }
  end
end

5.build_tower
