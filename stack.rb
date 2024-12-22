require_relative 'linked_list'

# Stack definition
class Stack

  attr_accessor :top
  attr_accessor :items

  def initialize
    @top = nil
    @items = LinkedList.new
  end

  # gets the item at the top of the stack
  def get_top
    return @top if @top
  end

  # inserts an item at the bottom of the stack
  def append(data)
    @items.append(data)
    @top = data
  end

  # prints the current stack
  def print_stack
    @items.print_list
  end

  # removes the item at the top of the stack
  def remove
    @items.delete_at_end
    current = @items.get_head
    current = current.next_item while current.next_item
    @top = current.data
  end

end

stack = Stack.new
stack.append(1)
stack.append(2)
stack.append(3)
stack.append(4)
stack.remove
stack.remove
stack_top = stack.get_top
stack.print_stack

puts "Current Top: #{stack_top}" if stack_top