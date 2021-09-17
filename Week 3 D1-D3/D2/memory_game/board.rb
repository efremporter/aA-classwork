class Board
  attr_reader :size, :show_grid
  def initialize(size)
    @grid = Array.new(size) { Array.new(size, "-") }
    @show_grid = @grid.dup
    @size = size
    @size_squared = @size * @size
    @populate = self.populate
  end
  
  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @grid[row][col] = val
  end

  def populate
    nums_arr = arr_of_nums
    until is_filled?(@grid)
      pos = self.get_random_index
      if !index_is_filled?(pos)
          x, y = pos
          @grid[x][y] = nums_arr.pop
      end
    end
  end

  def arr_of_nums
    pairs = (@size_squared) / 2
    pairs_of_nums = []
    while pairs_of_nums.length < @size_squared
      random_num = rand(0..@size_squared)
      if !pairs_of_nums.include?(random_num)
        2.times { pairs_of_nums << random_num }
      end
    end
    return pairs_of_nums
  end

  def get_random_index
    random_index_1 = rand(0...@size)
    random_index_2 = rand(0...@size)
    [random_index_1, random_index_2]
  end

  def index_is_filled?(pos)
    x = pos[0]
    y = pos[1]
    @grid[x][y] != "-"
  end

  def is_filled?(grid)
    grid.each do |sub_arr|
     if sub_arr.include?("-")
      return false
     end
    end
    return true
  end

  def print
    @grid.each.with_index { |row, i| puts @grid[i] }
  end

  def won?
    counter = 0
    @grid.each.with_index do |sub_arr, i|
      sub_arr.each.with_index do |ele, j|
        counter += 1 if @show_grid[i][j] == ele 
      end
    end
    counter == @size_squared
  end

end 