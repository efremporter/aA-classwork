class PolyTreeNode
  attr_reader :parent, :value
  attr_accessor :children


  def initialize(value)
    @parent = nil
    @children = []
    @value = value
  end

  def parent=(new_parent)
    if !parent.nil?
        parent.children.reject! {|child| child == self}
    end
    if !new_parent.nil? && !new_parent.children.include?(self) 
      new_parent.children << self 
    end
    @parent = new_parent
  end

  def add_child(child)
    self.children << child
    child.parent = self
  end

  def remove_child(child)
    if child.parent == nil
      raise "This is the root node"
    else
      child.parent = nil
    end
    self.children = self.children.reject {|x| x == child}
  end

  def dfs(target)
    return self if value == target
    self.children.each do |child|
      child.dfs(target) 
    end
    nil
  end

  def bfs(target)
    queue = [self]
    until queue.empty?
        x = queue.shift
        return x if x.value == target
        x.children.each do |child|
            queue << child
        end
    end
    nil
  end

end

# node1 = PolyTreeNode.new(1)
# node1.parent = node2

# arr = [1, 2, 3, 4]
# Array.new([1, 2, 3, 4])

