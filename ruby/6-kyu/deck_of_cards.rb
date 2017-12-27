# Deck of cards

# Your task should you chose to accept...
# Build a deck of playing cards by generating 52 strings representing cards. There are no jokers.
#
# Each card string will have the format of:
#
# "ace of hearts"
# "ace of spades"
# "ace of diamonds"
# "ace of clubs"
#
# And will consist of the following ranks:
#
# ace two three four five
# six seven eight nine ten
# jack queen king
# They do not need to be in order.
#
# Additional constraints
#
# Ruby:
#     You must use at least one flat_map in your solution
#     At most 3 lines

require 'rubygems'
require 'pry'

def deck_of_cards
  ranks = %w(ace two three four five six seven eight nine ten jack queen king).map(&:freeze).freeze
  kinds = %w(hearts spades diamonds clubs).map(&:freeze).freeze
  ranks.flat_map { |rank| kinds.map{ |kind| "#{rank} of #{kind}" } }
end

p deck_of_cards
