require_relative "player.rb"

class Game

  attr_reader :player_1, :player_2, :fragment, :dictionary, :current_player

  def initialize(player_1, player_2, dictionary)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = @player_1
    @fragment = ""
    @dictionary = dictionary
  end

  def is_valid?(letter)
    if @fragment.length > 1
      @dictionary.include?(@fragment + letter) # change to set method, check for prefix of word instead of full word
      true
    elsif @fragment.length == 1
      true
    else
      false
    end
  end
  
  def previous_player(current_player)
    current_player == @player_1 ? @player_2 : @player_1
  end
  
  def take_turn(player)
    answer = @current_player.guess
    if add_letter(answer)
      if lose?(@fragment)
        puts "#{@current_player} loses"
      else
        switch_player!
      end
    else
      puts "Invalid move"
      take_turn(player)
    end
  end

  def lose?(fragment)
    @dictionary.include?(fragment)
  end

  def add_letter(letter)
    if is_valid?(letter)
      @fragment += letter
      true
    else
      puts "invalid character"
      false
    end
  end

  def switch_player!
    @current_player == @player1 ? @current_player = @player_2 : @current_player = @player_1
  end
  



end
