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
WIN_COMBINATIONS.each do |win_combo|
  if win_combo[0] == "X" && [win_combo[1] == "X"  && win_combo[2] == "X"
    return win_combo
  elsif win_combo[0] == "O" && win_combo[1] == "O"  && win_combo[2]== "O"
    return win_combo
    end 
  return FALSE
end  
  
def full(board)
  board.all do |position|
    if (position == "X" || position == "O")
      return TRUE
    else 
      return FALSE
    end 
  end
end 