class Piece 
  
  attr_reader :board, :color, :pos
  attr_writer :pos

  SYM = [:K, :Q, :B, :R, :H, :P]

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
    x, y = pos
    board[x][y] = val
  end
end
