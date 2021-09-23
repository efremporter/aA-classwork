class Piece 
  
  attr_reader :board, :color, :pos

  def initialize(color, board, pos)
    @board = board
    @color = color
    @pos = pos
  end

  def [](pos)
    x, y = pos
    board[x][y]
  end

  def empty?(pos)
    return true if board[pos].symbol == " "
    false
  end

  def legal_move?(pos)
    self.all_possible_moves(self.pos).include?(pos)
  end

  def pos=(val)
    x, y = pos
    board[x][y] = val
  end

  # def move_into_check?(end_pos)
  #   #need to know if piece has checked the king with the end_pos.
  # end

end
