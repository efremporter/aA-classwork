class Board

    attr_accessor :grid
    def populate
        #[]([0,0]) => [[0,0]] => [0][0]
        grid[[0,0]] = "BR1"
        # grid[[0,7]] = "BR2"
        # grid[[0,1]] = "BH1"
        # grid[[0,6]] = "BH2"
        # grid[[0,2]] = "BB1"
        # grid[[0,5]] = "BB2"
        # grid[[0,3]] = "BQ"
        # grid[[0,4]] = "BK"
        # grid[[7,0]] = "WR1"
        # grid[[7,7]] = "WR2"
        # grid[[7,1]] = "WH1"
        # grid[[7,6]] = "WH2"
        # grid[[7,2]] = "WB1"
        # grid[[7,5]] = "WB2"
        # grid[[7,3]] = "WQ"
        # grid[[7,4]] = "WK"
    end
    
    def initialize
        @grid = Array.new(8) {Array.new(8)}
        
    end

    def [](pos) 
        x,y = pos
        return grid[x][y] 
    end
    
    def move_piece(start_pos, end_pos)
        if end_pos.valid_pos?
            self.start_pos = end_pos
        else
            raise "Invalid Move"
        end
    end

    def []=(pos, val)
        x, y = pos
        grid[x][y] = val

        #grid[position[0]][position[1]] = value
    end

    def valid_pos?(pos)
      if pos.nil?
        return true
      else
        return false
      end
    end

    def add_piece(piece, pos)
      grid[pos] = piece
    end

    

    def print
        grid.each do |row|
            p row
        end
    end
end 

b1 = Board.new
 p b1.populate
b1.print