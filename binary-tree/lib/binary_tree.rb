class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload, left, right)
    @payload = payload
    @left = left
    @right = right
  end

end

module BTreeSort
def self.sort(array)
  trunk = BinaryTree.new(array[0], nil, nil)
  array.each do |a|
    #puts "placing #{a}"
    next if a == array[0]
    placed = false
    place = lambda {|root, num|
      if num < root.payload && root.left == nil
        root.left = BinaryTree.new(num, nil, nil)
        #puts "placed #{num} in left #{root.payload}"
        return root
      elsif num > root.payload && root.right == nil
        root.right = BinaryTree.new(num, nil, nil)
        #puts "placed #{num} in right #{root.payload}"
        return root
      elsif num < root.payload
        root.left = place.call(root.left, num)
      elsif num > root.payload
        root.right = place.call(root.right, num)
      end
      return root
    }
    place.call(trunk, a)
    #puts trunk.inspect
  end
  list = []
  print = lambda {|list, root|
    if root.left == nil
      list << root.payload
      
    else
      print.call(list, root.left)
      list << root.payload
    end
    if root.right != nil
      print.call(list, root.right)
    end
    return list
  }
  return print.call(list, trunk)

end
end


#puts sort([7, 4, 9, 1, 6, 14, 10]).inspect