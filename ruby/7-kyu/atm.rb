# ATM

# There is enough money available on ATM in nominal value 10, 20, 50, 100, 200 and 500 dollars.
# You are given money in nominal value of n with 1<=n<=1500.
# Try to find minimal number of notes that must be used to repay in dollars, or output -1 if it is impossible.
# Good Luck!!!

require 'rubygems'
require 'pry'

# Best Answer
def best_atm(n)
  result = 0
  %w(500 200 100 50 20 10).map(&:to_i).each do |denomination|
    result += n / denomination
    n = n % denomination
  end
  n == 0 ? result : -1
end

def second_best_atm(n)
  notes = [500, 200, 100, 50, 20, 10].inject(0) { |memo, note|
    q, n = n.divmod(note)
    memo + q
  }
  n.zero? ? notes : -1
end


p atm(700)
