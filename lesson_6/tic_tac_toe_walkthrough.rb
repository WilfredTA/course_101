# Set up and display the board
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
    (1..9).each {|num| new_board[num] = ' '}
    new_board
end 

def player_move(brd)
    prompt "Choose a square (1-9):"
    square = gets.chomp.to_i
    brd[square] = 'X'
end 

board = initialize_board
display_board(board)

player_move(board)
puts board.inspect
display_board(board)
