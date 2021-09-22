require_relative "piece.rb"

class Knight < Piece

  def initialize(color, board, pos) 
    super(color, board, pos)
    @symbol = self.symbol
  end

  def symbol
    if color == "black"
      return :BH
    else
      return :WH
    end
  end
end