class Pawn < Piece

  def initialize(color, board, pos) 
    super(color, board, pos)

  end

  def symbol
    if color == "black"
      return :BP
    else
      return :WP
    end
  end
end