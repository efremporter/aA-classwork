class PolyTreeNode
  attr_reader :parent, :children, :value

  def initialize(value)
    @parent = nil
    @children = []
    @value = value
  end

  def parent=(new_parent)
    if !parent.nil?
      
    end
    if !new_parent.nil? && !new_parent.children.include?(self) 
      new_parent.children << self 
    end
    @parent = new_parent
  end
end

# node1 = PolyTreeNode.new(1)
# node1.parent = node2

# arr = [1, 2, 3, 4]
# Array.new([1, 2, 3, 4])

