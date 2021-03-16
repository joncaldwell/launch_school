SUITS = ['H', 'D', 'C', 'S']
FACE_VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def prompt(msg='')
  puts "=> #{msg}"
end

def initialize_deck(deck)
  deck.clear
  
  SUITS.each do |suit|
    FACE_VALUES.each do |face|
      deck.push([suit, face])
    end
  end
end

def display_hands(dealer_hand, player_hand)
  # input: two 2-element arrays containing strings with suits and values of cards
  # output: strings with the faces of the cards, one dealer card remaining hidden
  # and showing the total value of the hands as well (reference total method)
end

def shuffle_cards(deck_of_cards)
  deck_of_cards.shuffle!.shuffle!.shuffle!
end

def deal_starting_cards(player_hand, dealer_hand, deck_of_cards)
  shuffle_cards(deck_of_cards)
  2.times do |_idx|
    player_hand.push(deck_of_cards.shuffle!.pop)
    dealer_hand.push(deck_of_cards.shuffle!.pop)
  end
end

def busted?(hand)
  # input: player hand (2-element array of strings)
  # output: true if busted, false if not
  if total(hand) > 21
    true
  else
    false
  end
end

def total(cards)
  # cards is an array of arrays, each containing two strings. the first string is the 
  # suit, the second string is the number or face of the card
  
  # input: array of 2-element arrays containing single character strings
  # output: integer value of hand
  
  # explicit reqs: convert values of aces to 1 or 11, targeting the highest possible
  # hand value without busting
  
  values = cards.map { |card| card[1] }
  
  sum = 0
  
  values.each do |value|
    if value == 'A'
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end
  values.select { |value| value == 'A' }.each do |_val|
    sum -= 10 if sum > 21
  end
  sum
end

def hit_or_stay
  # ask user if they want to hit or stay
end

def hit(player_hand, deck_of_cards)
  player_hand.push(deck_of_cards.shuffle!.pop)
end

def winner_message(player_hand, dealer_hand)
  if player_hand > dealer_hand
    "Player wins!"
  elsif dealer_hand > player_hand
    "Dealer wins!"
  else
    "It's a tie!"
  end
end

puts
prompt("Welcome to Blackjack!")
puts

game_deck = []
player_hand = []
dealer_hand = []

initialize_deck(game_deck)

deal_starting_cards(player_hand, dealer_hand, game_deck)
p player_hand
p dealer_hand


# display starting hands

answer = nil

# PLAYER TURN
loop do
  puts "Your hand value is #{total(player_hand)}"
  break if busted?(player_hand)
  puts "Hit or stay?"
  answer = gets.chomp.downcase
  break if answer == 'stay' || busted?(player_hand)
  
  hit(player_hand, game_deck)
end

if busted?(player_hand)
  puts "You busted with with #{total(player_hand)}"
  # end game / play again?
else
  puts "You chose to stay!"
end

# DEALER TURN
loop do
  puts "Dealer hand value is: #{total(dealer_hand)}"
  break if total(dealer_hand) >= 17
  
  if total(dealer_hand) <= 16
    hit(dealer_hand, game_deck)
  end
end

if busted?(dealer_hand)
  # end game / player again?
end

# compare hand values to determine winner
# display winner

# ask if they want to play again?