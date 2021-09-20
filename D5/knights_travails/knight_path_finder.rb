require_relative "poly_node_tree.rb"
class KnightPathFinder

  def initialize(arr)
    @root_node = arr
    @directions = [[1, 2], [-1, 2], [1, -2], [-1, -2], [2, 1], [-2, 1], [2, -1], [-2, -1]]
  end

end


