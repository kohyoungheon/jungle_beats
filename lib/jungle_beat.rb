class JungleBeat
  attr_accessor :list
  def initialize
    @list = LinkedList.new
  end
  def append(beats)
    beats_array = beats.split
    beats_array.each do |beat|
      @list.append(beat)
    end
    @list
  end
  def count
    count = 0
    current_node = @list.head
    while current_node
      count +=1
      current_node = current_node.next_node
      # require 'pry'; binding.pry
    end
    count
  end

  def play
    beats = @list.to_string
    `say -r 500 -v Boing #{beats}`
  end
end