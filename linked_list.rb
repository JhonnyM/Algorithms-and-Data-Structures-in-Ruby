class Node
  # A object to store a single node of a linked list
  attr_accessor :data, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

#create a new node 
      
   #if the head is nil it means the list is empty
      
   #this would imply that the new node is the head
    
   #if head is not nil then there are element in the list 
   # make a copy of head 
   #loop through the list from the head using the copy of the head
   #note when .next_node is nil current node is the last element
        
  
#add an element at the end of the list by pointing its to the new          node(the node you intend to insert) instead of nil
class LinkedList
  #setup head ,remmember we traverse a linkedlist from the head
  def initialize
    @head = nil
    @tail = nil
  end

  def is_empty
    @head.nil?
  end

  def size
    current = @head
    count = 0
    while current
      count += 1
      current = current.next_node
    end

    return count
  end

  def add(data)
    #create a new node 
    # this one is an improvement we add at the head, takes O(1) time
    new_node = Node.new(data)
    new_node.next_node = @head
    @head = new_node
  end
  
end