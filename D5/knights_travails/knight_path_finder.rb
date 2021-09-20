require_relative "poly_node_tree.rb"
class KnightPathFinder

  attr_reader :root_node, :directions

  def initialize(pos)
    @root_node = pos
    @directions = []
  end

  def self.valid_moves(pos)
    i = 0
    possible_x = [-2, -1, 1, 2]
    possible_y = [-2, -1, 1, 2]
   
    possible_x.each_with_index do |x, index1|
      possible_y.each_with_index do |y, index2|
        if index2 >= index1 
         if (x + pos[0] <= 8 && x + pos[0] >= 0) && (y + pos[1] <= 8 && y + pos[1] >= 0)
            directions << [x + pos[0], y + pos[1]]
         end
        end
      end
    end
    

  end

end

# [[1, 2], [-1, 2], [1, -2], [-1, -2], [2, 1], [-2, 1], [2, -1], [-2, -1]]
