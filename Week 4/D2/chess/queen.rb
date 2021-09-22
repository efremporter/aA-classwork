require_relative "piece.rb"

class Queen < Piece

  def initialize(color, board, pos) 
    super(color, board, pos)
    @symbol = self.symbol
  end

  def symbol
    if color == "black"
      return :BQ  
    else
      return :WQ 
    end
  end
end