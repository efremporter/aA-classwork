require_relative "piece.rb"

class Rook < Piece

  def initialize(color, board, pos) 
    super(color, board, pos)
    @symbol = self.symbol
  end

  def symbol
    if color == "black"
      return :BR
    else
      return :WR
    end
  end
end