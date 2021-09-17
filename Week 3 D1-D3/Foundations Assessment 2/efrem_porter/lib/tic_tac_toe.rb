require_relative 'board'
require_relative 'player'

class TicTacToe

  def initialize(size=3)
    @player_1 = Player.new(:X)
    @player_2 = Player.new(:O)
    @current_player = @player_1
    @board = Board.new(size)
  end

  def switch_players!
    @current_player == @player_1? @current_player = @player_2 : @current_player = @player_1
  end

  def play_turn
    puts "Please select a position like 0 1"
    pos = @current_player.get_position
    @board[pos] = @current_player.mark
    switch_players!
  end

  def play
      until @board.winner?(:X) || @board.winner?(:O)
          p "#{@current_player.mark}'s turn"
          @board.print
          self.play_turn
      end

      @board.print
      self.switch_players!
      p "#{@current_player.mark} has won!"
  end
end
