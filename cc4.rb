# Exercise 1

song = [["row", 3], ["your", 1], ["boat", 1]]

# Desired result
# ["row", "row", "row", "your", "boat"]

# Bliss' answer
new_song = []
song.each do |word, num|
  num.times do
    new_song << word
  end
end

puts new_song.inspect

# Exercise 2

numbers = [ '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
suits = [ 'spades', 'hearts', 'diamonds', 'clubs']

# Desired result
# [['2', 'spades'], ['3', 'spades'], ... ['K', 'clubs'], ['A', 'clubs']]

# Mike's answer
deck = []
suits.each do |suit| # <= every "each" is one suit
  numbers.each do |number| # <= every "each" is one card (nested in one suit)
    deck << [number, suit]
  end
end

puts deck.inspect

# Another method
# product method generates all possible combinations of any given arrays
new_deck = suits.product(numbers).each do |card|
  card.reverse!
end

puts new_deck.inspect
