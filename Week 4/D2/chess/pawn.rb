require_relative "piece.rb"
attr_reader :symbol
class Pawn < Piece

  def initialize(color, board, pos) 
    super(color, board, pos)
    @symbol = self.symbol
  end

  def symbol
    if color == "black"
      return :BP
    else
      return :WP
    end
  end

  def possible_moves
    queue = [self]
    moves = [[1,0], [1,1], [1,-1]]

    until queue.empty?


    end
  end

  def move_dirs
    black_moves = [[1,0], [1,1],[1,-1]]
    black_start_move = [2,0]
    white_moves = [[-1,0], [-1,-1],[-1,1]]
    white_start_move = [-2,0]

    count = 0
    if self.color == "black"
      if count < 1
        count += 1
        return black_moves + black_start_move
      else
        return black_moves
      end
    else
      if count < 1
        count += 1
        return white_moves + white_start_move
      else
        return white_moves
      end
    end
  end
  
  def forward_steps 
    if symbol == "black"
      x, y = self.pos
      x_move = x + 1
      y_move = y + 0
      if valid_move?([x_move, y_move])
        self.pos = [x_move, y_move]
        return true
      end
    end
  end

  
  #forward_steps: check, can we move forward + 1? i.e. is anything in our way? not, we can move there. 
  # - Return an array of all possible positions it can move to from it's starting position
  # - Loop through move_dirs, 

  #Move_dirs
   # - Move dirs returns all of the possible differences it can move, without accounting for start_position
  #side_attacks: check if there are opponent pieces in the diagonals [1,1] or [1, -1]. If so, allow pawn to take it.
  
  #Effectively move the pawn from point a to point b
  # - Need to check all of the possible moves for the pawn from point a
  # - Need to check if point b is on the board
  # - Need to check if point b is occupied by another piece
  #   - Need to check whether it's an enemy piece or a friendly 
  # - 
end