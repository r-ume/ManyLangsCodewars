# Mumbling

# This time no story, no theory. The examples below show you how to write function accum:

# accum("abcd")    # "A-Bb-Ccc-Dddd"
# accum("RqaEzty") # "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
# accum("cwAt")    # "C-Ww-Aaa-Tttt"

require 'rubygems'
require 'pry'

class String
  def accum
    self.chars.map.with_index { |n, i|  (n * (i + 1)).capitalize }.join('-')
  end
end
