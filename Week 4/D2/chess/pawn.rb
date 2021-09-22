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
end