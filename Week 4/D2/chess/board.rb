require_relative "piece.rb"
require_relative "knight.rb"
require_relative "queen.rb"
require_relative "king.rb"
require_relative "rook.rb"
require_relative "pawn.rb"
require_relative "bishop.rb"
require_relative "null_piece.rb"

class Board

    attr_accessor :grid
    def populate
        #[]([0,0]) => [[0,0]] => [0][0]
        self[[0,0]] = Rook.new("black", grid, [0,0])
        self[[0,7]] = Rook.new("black", grid, [0,7])
        self[[0,1]] = Knight.new("black", grid, [0,1])
        self[[0,6]] = Knight.new("black", grid, [0,2])
        self[[0,2]] = Bishop.new("black", grid, [0, 2])
        self[[0,5]] = Bishop.new("black", grid, [0, 5])
        self[[0,3]] = Queen.new("black", grid, [0, 3])
        self[[0,4]] = King.new("black", grid, [0,4])
        self[[1,0]] = Pawn.new("black", grid, [1, 0])
        self[[1,1]] = Pawn.new("black", grid, [1, 1])
        self[[1,2]] = Pawn.new("black", grid, [1, 2])
        self[[1,3]] = Pawn.new("black", grid, [1, 3])
        self[[1,4]] = Pawn.new("black", grid, [1, 4])
        self[[1,5]] = Pawn.new("black", grid, [1, 5])
        self[[1,6]] = Pawn.new("black", grid, [1, 6])
        self[[1,7]] = Pawn.new("black", grid, [1, 7])
        self[[7,0]] = Rook.new("white", grid, [7,0])
        self[[7,7]] = Rook.new("white", grid, [7,7])
        self[[7,1]] = Knight.new("white", grid, [7,1])
        self[[7,6]] = Knight.new("white", grid, [7,6])
        self[[7,2]] = Bishop.new("white", grid, [7,5])
        self[[7,5]] = Bishop.new("white", grid, [7,5])
        self[[7,3]] = Queen.new("white", grid, [7,3])
        self[[7,4]] = King.new("white", grid, [7,4])
        self[[6,0]] = Pawn.new("white", grid, [6, 0])
        self[[6,1]] = Pawn.new("white", grid, [6, 1])
        self[[6,2]] = Pawn.new("white", grid, [6, 2])
        self[[6,3]] = Pawn.new("white", grid, [6, 3])
        self[[6,4]] = Pawn.new("white", grid, [6, 4])
        self[[6,5]] = Pawn.new("white", grid, [6, 5])
        self[[6,6]] = Pawn.new("white", grid, [6, 6])
        self[[6,7]] = Pawn.new("white", grid, [6, 7])

        #generate_null_piece
       (0...@grid.length).each do |row|
        (0...@grid.length).each do |col|
          if  @grid[row][col].nil?
            @grid[row][col] = NullPiece.new("black", grid, [row, col])
          end
        end
       end
    end
    
    def initialize
        @grid = Array.new(8) {Array.new(8)}
        
    end

    def [](pos) 
        x,y = pos
        return @grid[x][y] 
    end
    
    # def move_piece(start_pos, end_pos)
    #     if end_pos.valid_pos?
    #         self.start_pos = end_pos
    #     else
    #         raise "Invalid Move"
    #     end
    # end

    def []=(pos, val)
        x, y = pos
        @grid[x][y] = val

        #grid[position[0]][position[1]] = value
    end

    # def on_the_board?(pos)
    #   if pos.nil?
    #     return true
    #   else
    #     return false
    #   end
    # end

    def add_piece(piece, pos)
      self[pos] = piece
    end

    def hidden_grid
      @grid.map do |row|
        row.map do |piece|
          piece.symbol
        end
      end
    end 

    def self.print(two_d_array)
      puts ["", 0, 1, 2, 3, 4, 5, 6, 7].join("  ")
        two_d_array.each.with_index do |row, i|
            puts i.to_s + " " + row.join(" ")
        end
    end

    def print_grid
      Board.print(self.hidden_grid)
    end
end 

# b1 = Board.new
#  p b1.populate
# b1.print