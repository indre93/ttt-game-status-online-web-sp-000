# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    location1 = win_combination[0]
    location2 = win_combination[1]
    location3 = win_combination[2]
    board[location1] == board[location2] && board[location2] == board[location3] && board[location1] != " "
  end
end

def full?(board)
  board.none? {|index| index == " "}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || draw?(board) 
end

def winner(board)
 win_combination = won?(board)
 if winning_location
  winning_location = win_combination[0]
  board(winning_location)
end








