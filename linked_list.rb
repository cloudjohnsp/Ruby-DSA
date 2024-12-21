class ListNode
  attr_accessor :data, :next_item

  def initialize(data)
    @data = data
    @next_item = nil
  end

end

class LinkedList
  attr_accessor = :head

  def initialize
    @head = nil
  end

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

  def prepend(data)
    new_node = ListNode.new(data)
    new_node.next_item = @head
    @head = new_node
  end

  def print_list
    current = @head
    while current
      print "#{current.data} -> "
      current = current.next_item
    end
    puts "nil"
  end

  def find(item)
    current = @head
    while current
      return current if current.data == item
      current = current.next_item
    end
    nil
  end

end

list = LinkedList.new
list.append(1)
list.append(2)
list.prepend(0)
list.print_list

found_node = list.find(5)
puts "Found: #{found_node.data}" if found_node