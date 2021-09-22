require_relative "piece.rb"

class NullPiece < Piece

  def initialize(color, board, pos) 
    super(color, board, pos)
    @symbol = self.symbol
  end

  def symbol
    return " "
  end
end