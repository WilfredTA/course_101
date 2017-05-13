# Take-aways from building this program:
# 1. If object type errors come up when testing code, ask yourself if
#   the code is returning the intended value
# 2. When writing a method, it is useful to write the pseudo-code of that method
#   And include what you want it to return
# 2.5 Make sure the method only performs one task
# 3. Array#sample returns nil on an empty array.
# 4. If x is nil, array[x] is not nil. This is because x represents an index,
#   not an element, and nil can never be an index... [] is akin to a method requiring valid input
# 5. The return value of this is neither nil nor false: it is simply error due to invalid input.

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                  [[1, 5, 9], [3, 5, 7]] # diagonals


def joinor(brd, x, y)
  # Input is board array plus two args
  # Lists elements of array
  # First arg is between each element
  # Second arg is before last element
end

def score_keeper(player, computer)
end

def dangerous_square?(brd)
  # If player has 2 out of the 3 squares in any sub array of WINNING_LINES, 
  # return the square that the player doesn't have
end

def opportune_square?(brd)
  # If computer has two out of the 3 squares in any sub array of WINNING_LINES,
  # return the square that the computer doesn't have
end


def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system 'clear'
  puts ""
  puts " You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts "     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |     "
  puts ""
end

def initialize_board
  new_board = []
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  # Iterate over brd
  # If brd[index] == ' ' put index into a new array as an integer
  # Return array of integers that represent available indices
  available_squares = []
  number = 1
  loop do
    break if number > 9
    if brd[number] == INITIAL_MARKER
      available_squares << number
    end
    number += 1
  end
  available_squares
end

def player_move!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{empty_squares(brd).join(',')}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_move!(brd)
  square = empty_squares(brd).sample
  if square == nil
    []
  else
    brd[square] = COMPUTER_MARKER
  end
end

def board_full?(brd)
  empty_squares(brd) == []
end

def winner?(brd)
  !!detect_winner(brd) # !! will return true for any string (since strings are truthy)
                       # and false on nil (since nil is not truthy)
end

def detect_winner(brd)
  # If a diagonal of 3 has same marker, then player with that marker won
  # If column of 3 has same marker, then player with that marker won
  # if row of 3 has same marker, then player with that marker won
  WINNING_LINES.each do |array|
    if brd[array[0]] == PLAYER_MARKER &&
       brd[array[1]] == PLAYER_MARKER &&
       brd[array[2]] == PLAYER_MARKER
      return 'Player'
    elsif brd[array[0]] == COMPUTER_MARKER &&
          brd[array[1]] == COMPUTER_MARKER &&
          brd[array[2]] == COMPUTER_MARKER
           return 'Computer'
    end
  end
  nil
end

loop do
  board = initialize_board
  display_board(board)

  loop do
    display_board(board)
    player_move!(board)
    break if winner?(board) || board_full?(board)
    computer_move!(board)
    break if winner?(board) || board_full?(board)
  end

  display_board(board)

  if winner?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for playing Tic Tac Toe! Good bye."
