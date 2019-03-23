<<<<<<< HEAD
def turn(board)
=======
def turn(user_input)
>>>>>>> a1fef66bbe75660a5c0860c6c8b4de852c3e90b3
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
<<<<<<< HEAD
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

=======
  move(board, index)
  display_board(board)
  elsif valid_move?(board, index) == false
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  end
end

>>>>>>> a1fef66bbe75660a5c0860c6c8b4de852c3e90b3
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    true
    else
        false
    end
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def move(board, index, token = "X")
  board[index] = token
end
