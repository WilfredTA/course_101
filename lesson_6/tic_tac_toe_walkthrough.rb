# Take-aways from building this program: 
# 1. If object type errors come up when testing code, ask yourself if the code is returning the intended value
# 2. When writing a method, it is useful to write the pseudo-code of that method... Include what you want it to return
# 2.5 Make sure the method only performs one task
# Array#sample returns nil on an empty array. Be
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
    puts "=> #{msg}"
end 
 
 def display_board(brd)
    puts ""
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
    (1..9).each {|num| new_board[num] = INITIAL_MARKER}
    new_board
end 

def empty_squares(brd)
    #Iterate over brd 
    #If brd[index] == ' ' put index into a new array as an integer
    # Return array of integers that represent available indices
    available_squares = []
    number = 1
    loop do 
        break if number > 9
        if brd[number] == INITIAL_MARKER
            available_squares << number
        end
        number +=1
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
    false
end

board = initialize_board
display_board(board)

loop do
player_move!(board)
computer_move!(board)
display_board(board)

break if winner?(board) || board_full?(board)
end

display_board(board)