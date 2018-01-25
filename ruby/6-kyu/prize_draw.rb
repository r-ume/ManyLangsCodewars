# Prize Draw

# To participate in a prize draw each one gives his/her firstname.
# Each letter of a firstname has a value which is its rank in the English alphabet. A and a have rank 1, B and b rank 2 and so on.
# The length of the firstname is added to the sum of these ranks hence a number n. An array of random weights is linked to the firstnames and each n is multiplied by its corresponding weight to get what they call a winning number.
#
# Example: names: COLIN,AMANDBA,AMANDAB,CAROL,PauL,JOSEPH weights: [1, 4, 4, 5, 2, 1]
# PAUL -> n = length of firstname + 16 + 1 + 21 + 12 = 4 + 50 -> 54 The weight associated with PAUL is 2 so Paul's winning number is 54 * 2 = 108.
#
# Now one can sort the firstnames in decreasing order of the winning numbers. When two people have the same winning number sort them alphabetically by their firstnames.

require 'rubygems'
require 'pry'

# The Answer that I could have thought the best.
rank = Proc.new { |firstnames, we, n|
  firstnames = firstnames.split(',')
  alphabets = ('a'..'z').to_a.map(&:freeze).freeze
  num = firstnames.map { |firstname|
    firstname.chars.map { |char|
      alphabets.index(char.downcase)
    }.push(firstname.size).inject(:+)
  }.map.with_index { |number, i| number * we[i] }.sort.reverse
  answer = num.index(num[n - 1])
  firstnames[answer - 1]
}

p rank.call("Lagon,Lily", [1, 5], 2)

# Best Answer
def best_rank(namestring:, weight:, rank:)
  names = namestring.split(',')

  return 'No participants' if names.empty?
  return 'Not enough participants' if rank > names.size

  rank_names(names: names, weight: weight)[rank - 1]
end

def rank_names(names:, weight:)
  names.map.with_index { |name, index| [-score_name(name: name) * weight[index], name] }.sort.map{ |_, name| name }
end

def score_name(name:)
  name.size + name.upcase.chars.map { |c| c.ord - 64 }.inject(:+)
end

p best_rank(namestring: "Lagon,Lily", weight: [1, 5], rank: 2)
