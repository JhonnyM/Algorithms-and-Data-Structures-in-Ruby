#Implement Stack using Array:
class Stack
  def initialize
    @stack = []
  end

  def push(val)
    @stack.push(val)
  end

  def pop
    @stack.pop
  end

  def peek
    @stack[-1]
  end

  def empty?
    @stack.empty?
  end
end
