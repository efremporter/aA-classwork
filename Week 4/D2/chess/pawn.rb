require_relative "piece.rb"

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

  
  #forward_steps: check, can we move forward + 1? i.e. is anything in our way? not, we can move there. 

  #side_attacks: check if there are opponent pieces in the diagonals [1,1] or [1, -1]. If so, allow pawn to take it. 
end