class PolyTreeNode
  attr_reader :parent, :children, :value

  def initialize(value)
    @parent = nil
    @children = []
    @value = value
  end

  def parent=(new_parent)
    if !parent.nil?
        # parent.children =  parent.children.reject {|child| child == self}
    end
    if !new_parent.nil? && !new_parent.children.include?(self) 
      new_parent.children << self 
    end
    @parent = new_parent
  end

  def add_child(child)
    self.children << child
  end

  def remove_child(child)
    self.children = self.children.reject {|x| x == child}
  end

  def dfs(target)
    return value if value == target
    self.children
  end
end

# node1 = PolyTreeNode.new(1)
# node1.parent = node2

# arr = [1, 2, 3, 4]
# Array.new([1, 2, 3, 4])

