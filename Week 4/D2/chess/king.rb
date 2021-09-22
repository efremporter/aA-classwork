require_relative "piece.rb"

class King < Piece

  def initialize(color, board, pos) 
    super(color, board, pos)
    @symbol = self.symbol
  end

  def symbol
    if color == "black"
      return :BK
    else
      return :WK
    end
  end
end