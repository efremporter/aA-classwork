class Player
  attr_reader :mark
  def initialize(mark)
    @mark = mark
  end

  def get_position
      p "enter a valid position in the form `row col` like `0 1`"
      gets.chomp.split.map(&:to_i)
  end
end
