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

  def all_possible_moves(pos)
    counter = 0
    moves = []
    if color == "black" 
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

    valid_moves = []
    moves.each do |potential_move|
      if (pos[0] + potential_move[0]).between?(0,7) && (pos[1] + potential_move[1]).between?(0,7)
        if potential_move[1] == 0
            if [pos[0] + potential_move[0],pos[1] + potential_move[1]].empty?
              valid_moves << [pos[0] + potential_move[0],pos[1] + potential_move[1]]
            end
        else
          if [pos[0] + potential_move[0],pos[1] + potential_move[1]].color != self.color
            valid_moves << [pos[0] + potential_move[0],pos[1] + potential_move[1]]
          end
        end
      end
    end

    valid_moves
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