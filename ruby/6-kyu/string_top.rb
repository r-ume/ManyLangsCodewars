# String Top

# Task
# Write a function that accepts msg string and returns local tops of string from the highest to the lowest.
#     The string's tops are from displaying the string in the below way:
#
#                                                       3
#                               p                     2   4
#             g               o   q                 1
#   b       f   h           n       r             z
# a   c   e       i       m          s          y
#       d           j   l             t       x
#                     k                 u   w
#                                         v
# The next top is always 1 character higher than the previous one. For the above example, the solution for the abcdefghijklmnopqrstuvwxyz1234 input string is 3pgb.
#
# When the msg string is empty, return an empty string.
# The input strings may be very long. Make sure your solution has good performance.
# Check the test cases for more samples.

class String
  def tops(msg)
    result = ''
    index = 1
    counter = 0
    while index < msg.size do
      result << msg[index]
      index += (counter * 4) + 5
      counter += 1
    end
    result.reverse
  end
end
