# How Many Feelings?

# You have two arguments: string - a string of random letters(only lowercase) and array - an array of strings(feelings).
# Your task is to return how many specific feelings are in the array.

# For example:
#
# string -> 'yliausoenvjw'
# array -> ['anger', 'awe', 'joy', 'love', 'grief']
# output -> '3 feelings.' // 'awe', 'joy', 'love'
#
# string -> 'griefgriefgrief'
# array -> ['anger', 'awe', 'joy', 'love', 'grief']
# output -> '1 feeling.' // 'grief'
#
# string -> 'abcdkasdfvkadf'
# array -> ['desire', 'joy', 'shame', 'longing', 'fear']
# output -> '0 feelings.'

# If the feeling can be formed once - plus one to the answer.
# If the feeling can be formed several times from different letters - plus one to the answer.
# Each letter in string participates in the formation of all feelings. 'angerw' -> 2 feelings: 'anger' and 'awe'.

require 'rubygems'
require 'pry'

class String
  # Best Answer
  def kinds_of_feelings(feelings:)
    count = feelings.select do |feeling|
      feeling.chars.all? { |letter| self.count(letter) >= feeling.count(letter) }
    end.count
    count == 1 ? "1 feeling." : "#{count} feelings."
  end
end

p 'angerw'.kinds_of_feelings(feelings: ['anger', 'awe', 'joy', 'love', 'grief'])
