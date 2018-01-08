# Band Name Generator

# My friend wants a new band name for her band. She like bands that use the formula: 'The' + a noun with first letter capitalized.
# dolphin -> The Dolphin

# However, when a noun STARTS and ENDS with the same letter, she likes to repeat the noun twice and connect them together with the first and last letter, combined into one word like so (WITHOUT a 'The' in front):
# alaska -> Alaskalaska
# europe -> Europeurope
# Can you write a function that takes in a noun as a string, and returns her preferred band name written as a string?

class String
  def band_name_generator
    chars = self.chars
    chars.first == chars.last ? "#{self.capitalize}#{self[1..-1]}" : "The #{self.capitalize}"
  end

  def best_band_name_generator
    self[0] == self[-1] ? (self[0...-1] + self).capitalize : "The #{self.capitalize}"
  end
end


