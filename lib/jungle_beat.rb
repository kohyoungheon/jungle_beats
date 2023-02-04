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


end