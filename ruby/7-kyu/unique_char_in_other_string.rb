require 'rubygems'
require 'pry'

class String
  def uniq_char_in_other(other)
    ((self.chars.reject { |c| other.chars.include?(c) }) + (other.chars.reject { |d| self.chars.include?(d) })).join('')
  end
end

p "xyab".uniq_char_in_other("xzca")

# solve("xyab","xzca") = "ybzc"
# The first string has 'yb' which is not in the second string.
# The second string has 'zc' which is not in the first string.
