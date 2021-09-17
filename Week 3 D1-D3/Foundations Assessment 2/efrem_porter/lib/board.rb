class Board
  attr_reader :size

  def initialize(size)
    @size = size
    @grid = []
    size.times { @grid << Array.new(size) }
    @grid
  end 

  def [](pos)
    x = pos[0]
    y = pos[1]
    @grid[x][y]
  end

  def print
      @grid.each { |row| p row }
  end

  def []=(pos, mark)
    x = pos[0]
    y = pos[1]
    @grid[x][y] = mark
  end

  def complete_row?(mark)
    @grid.each do |row|
      return true if row.all? { |ele| mark == ele }
    end
    return false
  end
  
  def complete_col?(mark)
    @grid.each.with_index do |row, idx1|
      count = 0
      @grid.each.with_index do |ele, idx2|
        count += 1 if @grid[idx2][idx1] == mark
      end
      return true if count == row.length
    end
    return false
  end

  def complete_diag?(mark)
    count_i = 1
    count_j = 1
    flatGrid = @grid.flatten
    i = 0
    j = @grid.length - 1
    while i < flatGrid.length - 1
      count_i += 1 if flatGrid[i] == mark
      count_j += 1 if flatGrid[j] == mark
      i += @grid.length + 1
      j += @grid.length - 1
    end
    count_i == @grid.length || count_j == @grid.length
  end

  def winner?(mark)
    if complete_row?(mark) || complete_col?(mark) || complete_diag?(mark)
      return true
    end
    false
  end
end

# [x, x, x]
# [x, x, x]
# [x, x, x]