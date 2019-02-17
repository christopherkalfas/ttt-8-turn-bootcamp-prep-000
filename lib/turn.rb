def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} " 
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end 

def valid_move?(board, index)
   !position_taken?(board, index) && index.between?(0, 8) 
end

def position_taken?(board, index)
  if (board[index]) == " " || (board[index]) == "" || (board[index]) == nil
    return false
  else (board[index]) == "X" || (board[index]) == "O"
    return true
  end
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, value = "X")
<<<<<<< HEAD
board[index]  = value
=======
board[index] = value
>>>>>>> 422ee7b765a05b5464e9426cfa6ad86915316f42
return board 
end


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
<<<<<<< HEAD
    move(board, index)
    display_board(board)
  else
  turn(board)
  end
=======
    move(board, index, value = "X")
    turn(board)
  end
  display_board(board)
>>>>>>> 422ee7b765a05b5464e9426cfa6ad86915316f42
end

#get input
#convert input to index
#if index is valid
 #make the move for input
#else
 # ask for input again until you get a valid input
#end