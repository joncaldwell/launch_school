VALID_CHOICES = %w(rock paper scissors lizard spock)

def player_wins?(first, second, hash)
  puts "Player choice: #{first}"
  puts "Computer choice: #{second}"
  hash[first.to_sym][second.to_sym]
end

# hash of hashes with integers to determine who wins
# 0 = lose, 1 = tie, 2 = win

lose = "Computer wins! :-("
win = "Player wins! :-D"
tie = "It's a tie! :-|"

choices = {
  rock: {
    paper: lose,
    spock: lose,
    rock: tie,
    scissors: win,
    lizard: win
  },
  
  paper: {
    paper: tie,
    spock: win,
    rock: win,
    scissors: lose,
    lizard: lose
  },
  
  scissors: {
    paper: win,
    spock: lose,
    rock: lose,
    scissors: tie,
    lizard: win
  },
  
  lizard: {
    paper: win,
    spock: win,
    rock: lose,
    scissors: lose,
    lizard: tie
  },
  
  spock: {
    paper: lose,
    spock: tie,
    rock: win,
    scissors: win,
    lizard: lose
  }
}

puts "Choice: "
player_choice = gets.chomp
computer_choice = VALID_CHOICES.sample

puts player_wins?(player_choice, computer_choice, choices)