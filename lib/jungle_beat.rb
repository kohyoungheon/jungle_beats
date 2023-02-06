class JungleBeat
  attr_accessor :list
  def initialize
    @list = LinkedList.new
    @rate = 200
    @voice = "Daniel"
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
    beats_added
    # puts beats_added.to_s << " beats added"
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
    `say -r #{@rate} -v #{@voice} #{beats}`
    beat_array = beats.split("")
    return beat_array.length
  end

  def all
    beats = @list.to_string
    puts beats
  end

  def prepend(beats)
    beats_added=0
    beats_array = beats.split(" ")
    beats_array.each do |beat|
      if ["tee","dee","deep","bop","boop","la","na"].include?(beat)
        @list.prepend(beat)
        beats_added += 1
      end
    end
    beats_added
    # puts beats_added.to_s << " beats added"
  end
  def reset_rate
    @rate = 500
  end

  def reset_voice
    @voice = "Boing"
  end
end