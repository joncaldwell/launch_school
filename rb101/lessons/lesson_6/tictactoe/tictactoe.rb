require 'pry'

FIRST_MOVE = 'choose' # choose, player, or computer
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonals

def prompt(msg='')
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----|-----|-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----|-----|-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, invalid input."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil

  # pick square 5 first if possible
  if brd[5] == INITIAL_MARKER
    square = 5
  end

  # offense first
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, COMPUTER_MARKER)
      break if square
    end
  end

  # defense next
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  # if nothing to defend or attack, pick a random square
  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd, arr_of_wins = [])
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      arr_of_wins.push('Player')
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      arr_of_wins.push('Computer')
      return 'Computer'
    end
  end
  nil
end

def joinor(arr, delimiter = ', ', last_word = ' or ')
  if arr.size == 0
    ''
  elsif arr.size == 1
    arr.first
  elsif arr.size == 2
    arr.join(last_word)
  else
    arr[0, arr.size - 1].join(delimiter) + last_word + arr.last.to_s
  end
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def select_first_mover
  first_mover = nil
  prompt "Who has the first move? (player / computer)"
  loop do
    first_mover = gets.chomp.downcase
    break if first_mover == 'player' || first_mover == 'computer'
    prompt "Invalid input, please select 'player' or 'computer'"
  end
  first_mover
end

def place_piece!(brd, player)
  if player == 'player'
    player_places_piece!(brd)
  elsif player == 'computer'
    computer_places_piece!(brd)
  end
end

def alternate_player(player)
  if player == 'player'
    player = 'computer'
  else
    player = 'player'
  end
end

wins = []

first_mover = nil

if FIRST_MOVE == 'choose'
  first_mover = select_first_mover
elsif FIRST_MOVE == 'player'
  first_mover = 'player'
elsif FIRST_MOVE == 'computer'
  first_mover = 'computer'
end

current_player = first_mover

# MAIN GAME LOOP

loop do
  board = initialize_board

  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board, wins)} won!"
  else
    prompt "It's a tie!"
  end

  prompt
  prompt "****SCOREBOARD****"
  prompt "Player: #{wins.count('Player')}"
  prompt "Computer: #{wins.count('Computer')}"
  prompt "******************"
  prompt
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
