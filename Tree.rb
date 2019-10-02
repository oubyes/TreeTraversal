class Tree
  attr_accessor :payload, :children, :explored

  def initialize(payload, children)
    @payload = payload
    @children = children
    @explored = false
  end

  
class MyQueue
    attr_accessor :queue
  def initialize
    @queue = []
  end

  def enqueue(item)
    @queue.push(item)
  end

  def dequeue
    @queue.shift
  end
end

class Stack
  attr_accessor :stack

  def initialize
    @stack = []
  end

  def push(value)
    @stack.push(value)
  end

  def pop
    @stack.pop
  end 
end

def Breadth_First_Search (trees, value)
     trees.each do |tree|
        if tree.payload == value
            return tree.payload
        else
            Breadth_First_Search (tree.children, value)
        end

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

graph = [trunk, seventh_node, shallow_fifth_node, sixth_node, ninth_node, deep_fifth_node, eleventh_node, fourth_node]

Depth_First_Search(graph,trunk)


#while !queue.empty?


  

 #     Check root
 #     push on the stack
 #     print 
 #     mark 
 #     Check adjacent and unvisite nodes
 #     push on the stack
 #     print
 #     mark as visited
 #     check adjacent node if nonvisited bac to 1
 # else pop

    
#      if @payload == 11
#         return "found 11"
#     else 
#      @children[0..1].Depth_First_Search
#     end
# end



#trunk.Depth_First_Search