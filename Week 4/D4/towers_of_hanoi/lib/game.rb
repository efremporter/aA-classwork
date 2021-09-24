class Game
  attr_reader :grid
  attr_accessor :game_over

  def initialize(n)
    @grid = Array.new(3) { [] }
    (1..n).each { |num| @grid[0].unshift(num) }
    @game_over = false
  end

  def move(start, end_pos)
    var = @grid[start].pop
    @grid[end_pos].push(var)
    @grid
  end

  def valid_move?(start, end_pos)
    grid[start].last < grid[end_pos].last
  end

  def run
    g = Game.new()
    
  end

end

