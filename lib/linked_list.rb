
class LinkedList
  attr_accessor :head
  def initialize()
    @head = nil
  end

  def append(data)
    @head = Node.new(data)
  end

  def count
    count = 0
    current_node = @head
    while current_node
      count +=1
      current_node = current_node.next_node
    end
    count
    # if @head = nil
    #   count = 0
    # else
    #   count = 1
    #   current_node = @head
    #   while current_node.next_node != nil
    #     current_node = current_node.next_node
    #     count += 1
    #   end
    # end
  end

  def to_string
    strings = ""
    current_node = @head
    while current_node
      strings = strings << current_node.data
      current_node = current_node.next_node
    end
    return strings
  end
end