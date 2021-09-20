require_relative "poly_node_tree.rb"
require "byebug"
class KnightPathFinder

  attr_reader :root_node
  attr_accessor :considered_positions

  def initialize(pos)
    @root_node = pos
    @considered_positions = []
  end

  def self.valid_moves(pos)
    @valid_positions = []
    i = 0
    possible_positions = [[1, 2], [-1, 2], [1, -2], [-1, -2], [2, 1], [-2, 1], [2, -1], [-2, -1]]
    possible_positions.each do |possible_pos|
      if (pos[0] + possible_pos[0] < 8 && pos[0] + possible_pos[0] >= 0) && (pos[1] + possible_pos[1] < 8 && pos[1] + possible_pos[1] >= 0)
        @valid_positions << [possible_pos[0] + pos[0], possible_pos[1] + pos[1]]
      end  
    end
    @valid_positions
  end

  def new_move_positions(pos)
    considered_positions.concat(KnightPathFinder.valid_moves(pos))
  end



end