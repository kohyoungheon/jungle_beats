
class LinkedList
  attr_accessor :head
  def initialize()
    @head = nil
  end

  def append(data)
    new_node = Node.new(data) 
    if @head.nil?
      @head = new_node
    else
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      #end of the list
      current_node.next_node = new_node
    end
  end

  def count
    count = 0
    current_node = @head
    while current_node
      count +=1
      current_node = current_node.next_node
    end
    count
  end

  def to_string
    strings = ""
    current_node = @head
    while current_node
      strings = strings << current_node.data + " "
      current_node = current_node.next_node
    end
    return strings.strip
  end

  def insert(index,data)
    current_node = @head
    (index-1).times do
      current_node = current_node.next_node
    end
    new_node = Node.new(data)
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end

  def prepend(data)
    if @head == nil
      @head == Node.new(data)
    else
      old_head = @head
      @head = Node.new(data, old_head)
    end
  end

  def find (start_position,elements_to_return)
    elements = []
    current_node=@head
    (start_position).times do
      current_node = current_node.next_node
    end
    elements_to_return.times do
      elements << current_node.data
      current_node = current_node.next_node
    end
    elements
  end

end