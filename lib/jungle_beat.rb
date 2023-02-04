class JungleBeat
  attr_accessor :list
  def initialize
    @list = LinkedList.new
  end

  def append(beats)
    beats_added=0
    beats_array = beats.split(" ")
    beats_array.each do |beat|
      if ["tee","dee","deep","bop","boop","la","na"].include?(beat)
        @list.append(beat)
        beats_added += 1
      end
    end
    puts beats_added.to_s << " beats added"
  end

  def count
    count = 0
    current_node = @list.head
    while current_node
      count +=1
      current_node = current_node.next_node
    end
    count
  end

  def play
    beats = @list.to_string
    `say -r 500 -v Boing #{beats}`
  end

  def all
    beats = @list.to_string
    puts beats
  end
end