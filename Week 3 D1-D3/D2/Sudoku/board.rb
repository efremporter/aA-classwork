require_relative "./tile.rb"
class Board

  def initialize
    @grid = Array.new(9) { Array.new(9) }
    random_num = rand(17..40)
    count = 0
    until count == random_num
      tile = Tile.new(rand(1..9).to_s) #call populate after this
      populate(tile)
      count += 1
    end
    until !@grid.flatten.include?(nil)
      tile = Tile.new() #call populate after this
      populate(tile)
    end
  end

  def populate(tile)
    pos = get_random_position
    x, y = pos 
    if @grid[x][y] == nil && !@grid[x].include?(tile.value)
      @grid[x][y] = tile
    else
      populate(tile)
    end
  end

  def check_position(pos, value)
    count = 0
    row, column = pos
    col_arr = []
    (0...@grid.length).each do |row|
      col_arr << @grid[row][col]
    end
    if col_arr.include?(value)
      return false
    else
      count += 1
    end
  end

  def get_random_position
    x = rand(0...9)
    y = rand(0...9)
    return [x, y]
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @grid[row][col] = val
  end

  def render
    @grid 
  end

  def solved_row?
    @grid.each do |row|
      unique_nums = Hash.new(0)
      row.each do |tile|
        unique_nums[tile] += 1 if row.sum == 45
      end
      unique_nums.each do |k, v|
        if unique_nums[k] != 1
          return false
        else
          return true
        end
      end 
    end
  end

  def solved_col?
    (0...9).each do |col|
      unique_nums = Hash.new(0)
      col_arr = []
      @grid.each.with_index do |row, i|
        col_arr << @grid[i][col]
        unique_nums[@grid[i][col]] += 1 
      end
      if col_arr.sum == 45
        unique_nums.each do |k, v|
        if unique_nums[k] != 1
          return false
        else
          return true
        end
      end
    end
  end
  
  def solved_square?
    tiles = Hash.new(0)
    i = 0
    while i < 9
      (i..i + 2).each do |row|
        (i..i + 2).each do |col|
          ele = @grid[i][i]
          tiles[ele] += 1
        end
      end
      i += 3
    end
    tiles.each do |k, v|
        if tiles[k] != 1
          return false
        else
          return true
        end
      end
    end
  end 

  def solved?
    solved_row? || solved_col? || solved_square?
  end


end