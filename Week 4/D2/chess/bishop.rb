require_relative "piece.rb"

class Bishop < Piece

  def initialize(color, board, pos) 
    super(color, board, pos)
    @symbol = self.symbol
  end

  def symbol
    if color == "black"
      return :BB
    else
      return :WB
    end
  end
end