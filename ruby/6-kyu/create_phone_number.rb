# Create Phone Number

# Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.
#
# Example:
# createPhoneNumber(Array[1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"
# The returned format must be correct in order to complete this challenge.
# Don't forget the space after the closing parenthesis!

class Array
  # My Answer
  def create_phone_number
    self.insert(0, '(').insert(4, ') ').insert(8, '-').join
  end

  # Best Answer
  def best_create_phone_number
    '(%d%d%d) %d%d%d-%d%d%d%d' % self
  end
end

best_create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
