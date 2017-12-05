=begin
The code provided is supposed return a person's Full Name given their first and last names.
But it's not working properly.

Notes
The first and/or last names are never null (None in Python), but may be empty.

Task
Fix the bug so we can all go home early.
=end

# My Answer
class Dinglemouse
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    return @first_name if @last_name.empty?
    return @last_name if @first_name.empty?

    return @first_name + ' ' + @last_name
  end
end

# Best Answer
class Dinglemouse2
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    return (@first_name + ' ' + @last_name).strip
  end
end
