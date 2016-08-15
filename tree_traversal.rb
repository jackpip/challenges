class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

end

# The "Leafs" of a tree, elements that have no children
deep_fifth_node = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node   = Tree.new(4, [])

# The "Branches" of the tree
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [deep_fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
shallow_fifth_node = Tree.new(5, [ninth_node])

# The "Trunk" of the tree
trunk   = Tree.new(2, [seventh_node, shallow_fifth_node])


def depth_first(root)
  print " -> #{root.payload}"
  root.children.each do |child|
    depth_first(child)
  end
end

def breadth_first(root)
  q = []
  q.push(root)
  while root = q.shift
    print " -> #{root.payload}"
    root.children.each do |child|
      q.push(child)
    end
  end
end

puts "Depth First"
depth_first(trunk)
puts ""

puts "Breadth First"
breadth_first(trunk)
puts ""