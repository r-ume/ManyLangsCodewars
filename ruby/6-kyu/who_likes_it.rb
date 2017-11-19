require 'rubygems'
require 'pry'

class Array
  def likes
    return 'no one likes this' if self.empty?
    return self.join(' ') if self.size = 1
    return self.join(', and') if self.size = 2
  end
end

p ['Peter'].likes
