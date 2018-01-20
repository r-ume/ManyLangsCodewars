# Array of Cats and Dogs

# Consider an array containing cats and dogs. Each dog can catch only one cat,
# but cannot catch a cat that is more than n elements away.
# Your task will be to return the maximum number of cats that can be caught.
#
# For example:
#
# solve(['D','C','C','D','C'], 2) = 2, because the dog at index 0 (D0) catches C1 and D3 catches C4.
# solve(['C','C','D','D','C','D'], 2) = 3, because D2 catches C0, D3 catches C1 and D5 catches C4.
# solve(['C','C','D','D','C','D'], 1) = 2, because D2 catches C1, D3 catches C4. C0 cannot be caught because n == 1.
# solve(['D','C','D','D','C'], 1) = 2, too many dogs, so all cats get caught!

require 'rubygems'
require 'pry'

class Array
  # Several Answers
  def dogs_and_cats(num:)
    caught_cats, cats, dogs = 0, {}, {}

    self.each_with_index do |animal, index|
      case animal
      when 'D'; dogs[index] = true
      when 'C'; cats[index] = true
      end
    end

    cats.each do |cat_index, _|
      ((cat_index - num)..(cat_index + num)).each do |index|
        next unless dogs[index]
        caught_cats += 1
        dogs[index] = false
        break
      end
    end

    caught_cats
  end
end


p %w(D C C D C).dogs_and_cats(num: 2)
