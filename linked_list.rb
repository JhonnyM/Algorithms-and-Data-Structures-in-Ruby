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

  def search(key)
    # Search for the first node containing data that matches the key
    # Return the node or nil if not found
    # Takes O(n) time (linear time)
    current = @head

    while(current)
      if current.data == key
        return current
      else 
        current = current.next_node
      end
    end
    return nil
  end

  def insert(data, index)
    # takes 2 arguments the data and the position we want to insert at
    add(data) if index == 0 

    if index >  0 
      new_node = Node.new(data)

      position = index
      current = @head

      while(position > 1)
        current = current.next_node
        position -= 1
      end

      prev_node = current
      next_node = current.next_node

      prev_node.next_node = new_node
      new_node.next_node = next_node
    end
  end

  def remove(key)
    #Removes Node containing data that matches the key
    #Returns the node or nil if key doesn't exist
    #Takes O(n) time
    current = @head
    previous = nil
    found = false

    while(current && found != true)
      if current.data == key  && current == @head
        found = true
        @head = current.next_node
        return current
      elsif current.data == key
        found = true
        previous.next_node = current.next_node
        return current
      else
        previous = current
        current = current.next_node
      end
    end
    return nil
  end

  def remove_at(index)
  end


end