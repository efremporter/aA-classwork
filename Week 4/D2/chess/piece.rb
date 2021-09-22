class Piece
  
  attr_reader :board, :color, :pos
  def initialize(color, board, pos)
    @board = board
    @color = color
    @pos = pos
  end


  def empty?
    return true if board[pos] == nil
    false
  end

  def pos=(val)
    
  end
end
