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
  # dealer_hand = [["H", "8"], ["D", "J"]]

  prompt "Dealer has: #{card_value(dealer_hand[0])} and unknown card."
  prompt "You have: #{card_value(player_hand[0])} and #{card_value(player_hand[1])}."
  
end

def shuffle_cards(deck_of_cards)
  deck_of_cards.shuffle!.shuffle!.shuffle!
end

def deal_starting_cards(player_hand, dealer_hand, deck_of_cards)
  shuffle_cards(deck_of_cards)
  2.times do |_idx|
    player_hand.push(deck_of_cards.pop)
    dealer_hand.push(deck_of_cards.pop)
  end
end

def busted?(hand)
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

def card_value(arr)
  # input: two element array, second element is the value
  # output: string for the value of the card, ie "J" becomes "Jack", "6" remains "6"
  if arr[1].to_i >= 2 && arr[1].to_i <= 10
    arr[1]
  elsif arr[1] == "J"
    "Jack"
  elsif arr[1] == "Q"
    "Queen"
  elsif arr[1] == "K"
    "King"
  elsif arr[1] == "A"
    "Ace"
  end
end

def hit(player_hand, deck_of_cards)
  new_card = deck_of_cards.shuffle!.pop
  player_hand.push(new_card)
  prompt("The new card is: #{card_value(new_card)}")
end

def determine_winner(player_hand, dealer_hand)
  player_score = total(player_hand)
  dealer_score = total(dealer_hand)
  if player_score > dealer_score
    "player"
  elsif dealer_score > player_score
    "dealer"
  elsif player_score == dealer_score
    "tie"
  end
end

def display_winner(result)
  if result == "player"
    prompt "Player wins!"
  elsif result == "dealer"
    prompt "Dealer wins!"
  elsif result == "tie"
    prompt "It's a tie!"
  else
    prompt "ERROR: Invalid argument"
  end
end

system "clear"

puts
prompt("Welcome to Blackjack!")
puts

# BEGIN GAME LOOP

loop do

  game_deck = []
  player_hand = []
  dealer_hand = []
  
  initialize_deck(game_deck)
  
  deal_starting_cards(player_hand, dealer_hand, game_deck)
  
  loop do
    display_hands(dealer_hand, player_hand)
        
    answer = nil
    
    # PLAYER TURN
    loop do
      puts
      prompt "Your hand value is #{total(player_hand)}"
      break if busted?(player_hand)
      prompt "Hit or stay?"
      answer = gets.chomp.downcase
      break if answer.start_with?('s') || busted?(player_hand)
      
      hit(player_hand, game_deck)
    end
    
    if busted?(player_hand)
      prompt "You busted with with #{total(player_hand)}. Dealer wins."
      break
    else
      prompt "You chose to stay!"
    end
    
    # DEALER TURN
    loop do
      puts
      prompt "Dealer hand value is: #{total(dealer_hand)}"
      break if total(dealer_hand) >= 17
      
      if total(dealer_hand) <= 16
        hit(dealer_hand, game_deck)
      end
      sleep 1.5
    end
    
    if busted?(dealer_hand)
      prompt "Dealer busted, you win!"
      break
    end
    
    display_winner(determine_winner(player_hand, dealer_hand))
    
    break
  end
  
  # END HAND LOOP

  # ask if they want to play again?
  puts
  prompt "Would you like to play again? y or n"
  play_again = gets.chomp.downcase
  if play_again.start_with?('n')
    break
  end
  system "clear"
end

# END GAME LOOP



