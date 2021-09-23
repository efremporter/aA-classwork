class Game
  attr_reader :grid
  attr_accessor :game_over
  
  def initialize(n)
    @grid = Array.new(3) { [] }
    (1..n).each { |num| @grid[0].unshift(num) }
    @game_over = false
  end
end