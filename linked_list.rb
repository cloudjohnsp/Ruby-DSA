class ListNode
  attr_accessor :data, :next_item

  def initialize(data, next_item)
    @data = data
    @next_item = next_item
  end

end

class LinkedList
  attr_accessor = :head

  def initialize
    @head = nil
  end

  def append(data)
    new_node = ListNode.new(data, nil)
    if @head.nil?
      @head = new_node

    else
      current = @head
      current = current.next_item while current.next_item
      current.next_item = new_node
    end
  end

  def print_list
    current = @head
    while current
      print "#{current.data} -> "
      current = current.next_item
    end
    puts "nil"
  end

end

list = LinkedList.new
list.append(1)
list.append(2)
list.print_list