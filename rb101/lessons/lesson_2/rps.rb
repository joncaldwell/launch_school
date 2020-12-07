VALID_CHOICES = %w(rock paper scissors lizard spock)
=begin

choices = {

=end
puts VALID_CHOICES

# 0 = lose, 1 = tie, 2 = win
# hash of hashes with different values giving integer to determine who wins
# method to convert input to symbols and look up in hash to find result

choices = {
  rock: {
    paper: 0,
    spock: 0,
    rock: 1,
    scissors: 2,
    lizard: 2
  },
  
  paper: {
    paper: 1,
    spock: 2,
    rock: 2,
    scissors: 0,
    lizard: 0
  },
  
  scissors: {
    paper: 2,
    spock: 0,
    rock: 0,
    scissors: 1,
    lizard: 2
  },
  
  lizard: {
    paper: 2,
    spock: 2,
    rock: 0,
    scissors: 0,
    lizard: 1
  },
  
  spock: {
    paper: 0,
    spock: 1,
    rock: 2,
    scissors: 2,
    lizard: 0
  }
}

puts choices

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won.")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose #{choice}; Computer chose #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again? y/n")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing!")
