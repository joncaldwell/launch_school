VALID_CHOICES = %w(rock paper scissors lizard spock)

# method to convert input to symbols and look up in hash to find result

def display_results(first, second, hash)
  puts "Player choice: #{first}"
  puts "Computer choice: #{second}"
  puts hash[first.to_sym][second.to_sym]
end

# method to display current scores

def display_score(first, second, rounds)
  puts "======================="
  puts "Round ##{rounds}"
  puts "Player score: #{first}"
  puts "Computer score: #{second}"
end

# messages for possible outcomes

lose = "Computer wins! :-("
win = "Player wins! :-D"
tie = "It's a tie! :-|"

# hash of hashes with integers to determine who wins
# 0 = lose, 1 = tie, 2 = win

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

def prompt(message)
  Kernel.puts("=> #{message}")
end

player_score = 0
computer_score = 0
round_count = 1

prompt("Welcome to RPS. First to 5 points wins the game!")

loop do
  player_choice = ''
  loop do
    prompt("Choose one: (r)ock, (p)aper, (sc)issors, (l)izard, (sp)ock")
    input = Kernel.gets().chomp()
    player_choice = VALID_CHOICES.select { |x| x.start_with?(input) }

    if player_choice.length == 1
      player_choice = player_choice[0].to_s
      break
    else
      prompt("Not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  if choices[player_choice.to_sym][computer_choice.to_sym] == win
    player_score += 1
  elsif choices[player_choice.to_sym][computer_choice.to_sym] == lose
    computer_score += 1
  end

  display_results(player_choice, computer_choice, choices)

  display_score(player_score, computer_score, round_count)

  if player_score == 5
    puts "PLAYER WINS THE MATCH! Congratulations."
    break
  elsif computer_score == 5
    puts "COMPUTER WINS THE MATCH! Better luck next time."
    break
  end

  round_count += 1

  prompt("Do you want to play again? y/n")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing!")
