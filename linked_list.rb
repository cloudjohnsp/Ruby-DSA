# Linked List Node definition
class ListNode
  attr_accessor :data, :next_item

  def initialize(data)
    @data = data
    @next_item = nil
  end

end

# Linked List definition
class LinkedList
  attr_accessor = :head

  def initialize
    @head = nil
  end

  def get_head
    return @head if !@head.nil?
  end

  # inserts at end
  def append(data)
    new_node = ListNode.new(data)
    if @head.nil?
      @head = new_node

    else
      current = @head
      current = current.next_item while current.next_item
      current.next_item = new_node
    end
  end

  # inserts at start
  def prepend(data)
    new_node = ListNode.new(data)
    new_node.next_item = @head
    @head = new_node
  end

  # prints all nodes
  def print_list
    current = @head
    while current
      print "#{current.data} -> "
      current = current.next_item
    end
    puts "nil"
  end

  # find a specific node
  def find(item)
    current = @head
    while current
      return current if current.data == item
      current = current.next_item
    end
    nil
  end

  # removes a node
  def delete(item)
    return if @head.nil?

    if @head.data == item
      @head = @head.next_item
      return
    end

    current = @head
    while current.next_item && current.next_item.data != item
      current = current.next_item
    end

    current.next_item = current.next_item.next_item if current.next_item
  end

end

list = LinkedList.new
list.append(1)
list.append(2)
list.prepend(0)
list.prepend(10)
list.delete(1)
list.print_list

found_node = list.find(5)
returned_head = list.get_head
puts "Found: #{found_node.data}" if found_node
puts "Current Head is #{returned_head.data}" if returned_head