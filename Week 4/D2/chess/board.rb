class Board

    def initialize
        @board = Array.new(8) {Array.new(8)}
    end

    def [](pos)
        x,y = pos
        return board[x][y]
    end
    
    def move_piece(start_pos, end_pos)
        if end_pos.valid_move?
            self.start_pos = end_pos
        else
            raise "Invalid Move"
        end
    end
end