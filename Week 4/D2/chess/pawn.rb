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

  def all_possible_moves(start_pos)
    counter = 0
    moves = []
    if self.color == "black" 
      if counter < 1
        counter += 1
        moves = [[2,0],[1,0], [1,1],[1,-1]]
      else
        moves = [[1,0], [1,1],[1,-1]]
      end

    else

      if counter < 1
        counter += 1
        moves = [[-2,0],[-1,0], [-1,-1],[-1,1]]
      else
        moves = [[-1,0], [-1,-1],[-1,1]]
      end
    end

    valid_moves = []
    moves.each do |potential_move|
      if (start_pos[0] + potential_move[0]).between?(0,7) && (start_pos[1] + potential_move[1]).between?(0,7)
        if potential_move[1] == 0
            if self.empty?([start_pos[0] + potential_move[0],start_pos[1] + potential_move[1]])
              valid_moves << [start_pos[0] + potential_move[0],start_pos[1] + potential_move[1]]
            end
        else
          if self.board[start_pos[0] + potential_move[0],start_pos[1] + potential_move[1]].is_a?(NullPiece)
            valid_moves << [start_pos[0] + potential_move[0],start_pos[1] + potential_move[1]]
          end
        end
      end
    end

    valid_moves
  end

  def legal_move?(desired_pos)
    if all_possible_moves(pos).include?(desired_pos)

    else

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