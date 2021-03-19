SUITS = ['H', 'D', 'C', 'S']
FACE_VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
SLEEP_DELAY = 1.5

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
  prompt "Dealer has: #{card_value(dealer_hand[0])} and unknown card."
  prompt "You have: #{card_value(player_hand[0])} and #{card_value(player_hand[1])}."
end

def shuffle_cards(deck_of_cards)
  deck_of_cards.shuffle!.shuffle!.shuffle!
end

def deal_starting_cards(player_hand, dealer_hand, deck_of_cards)
  shuffle_cards(deck_of_cards)
  2.times do
    player_hand.push(deck_of_cards.pop)
    dealer_hand.push(deck_of_cards.pop)
  end
end

def busted?(value)
  value > 21
end

def total(cards)
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
  new_card = deck_of_cards.pop
  player_hand.push(new_card)
  prompt("The new card is: #{card_value(new_card)}")
end

def determine_winner(player_score, dealer_score)
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

player_score = 0
dealer_score = 0

loop do
  game_deck = []
  player_hand = []
  dealer_hand = []

  initialize_deck(game_deck)

  deal_starting_cards(player_hand, dealer_hand, game_deck)

  dealer_value = nil
  player_value = nil

  loop do
    display_hands(dealer_hand, player_hand)

    dealer_value = total(dealer_hand)
    player_value = total(player_hand)

    answer = nil

    loop do
      puts
      prompt "Your hand value is #{player_value}"
      break if busted?(player_value)

      loop do
        prompt "(H)it or (s)tay?"
        answer = gets.chomp.downcase
        break if answer.start_with?('h', 's')
        prompt "ERROR: Input must start with 'h' or 's'"
      end

      if answer.start_with?('h')
        prompt "You chose to hit."
        hit(player_hand, game_deck)
      end

      player_value = total(player_hand)
      break if answer.start_with?('s') || busted?(player_value)
    end

    if busted?(player_value)
      prompt "You busted with with #{player_value}. Dealer wins."
      dealer_score += 1
      break
    else
      prompt "You chose to stay!"
    end

    prompt "Dealer turn..."
    sleep SLEEP_DELAY

    loop do
      puts
      prompt "Dealer hand value is: #{dealer_value}"
      break if dealer_value >= 17

      if dealer_value <= 16
        hit(dealer_hand, game_deck)
      end

      dealer_value = total(dealer_hand)

      sleep SLEEP_DELAY
    end

    dealer_value = total(dealer_hand)

    if busted?(dealer_value)
      prompt "Dealer busted with #{dealer_value}. You win!"
      player_score += 1
      break
    end

    puts "==========="
    prompt "Dealer has #{dealer_hand}, for a total value of: #{dealer_value}"
    prompt "Player has #{player_hand}, for a total value of: #{player_value}"
    puts "==========="

    winner = determine_winner(player_value, dealer_value)
    sleep SLEEP_DELAY
    display_winner(winner)

    if winner == "player"
      player_score += 1
    elsif winner == "dealer"
      dealer_score += 1
    end

    break
  end

  puts "---------------"
  prompt "Player score: #{player_score}"
  prompt "Dealer score: #{dealer_score}"
  puts "---------------"
  prompt "Would you like to play again? y or n"
  play_again = gets.chomp.downcase
  if play_again.start_with?('n')
    break
  end
  system "clear"

end
