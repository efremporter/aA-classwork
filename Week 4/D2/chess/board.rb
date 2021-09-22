class Board

    def initialize
        @board = Array.new(8) {Array.new(8)}
    end

    def [](pos)
        x,y = pos
        return board[x][y]
    end
    
    def move_piece(start_pos, end_pos)
        if end_pos.valid_pos?
            self.start_pos = end_pos
        else
            raise "Invalid Move"
        end
    end

    def []=(pos, val)
      board[pos] = val
    end

    def valid_pos?(pos)
      if pos.nil?
        return true
      else
        return false
      end
    end

    def add_piece(piece, pos)
      board[pos] = piece
    end

end 