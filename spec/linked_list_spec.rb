require './lib/linked_list'
require './lib/node'
require 'rspec'

describe LinkedList do
  describe "#initialize" do
    it "is an instance of LinkedList" do
      linked_list = LinkedList.new
      expect(linked_list).to be_instance_of(LinkedList)
    end
    it "has a head attribute" do
      linked_list = LinkedList.new
      expect(linked_list.head).to eq(nil)
    end
  end
  describe "#append" do
    it "appends a node to the end of the linked list" do
      linked_list = LinkedList.new
      linked_list.append("beep")
      # node = Node.new("beep")
      expect(linked_list.head.data).to eq("beep")
    end
  end

  describe "#count" do
    it "counts the number of nodes in a linked_list" do
      linked_list = LinkedList.new
      linked_list.append("doop")
      linked_list.append("deep")
      expect(linked_list.count).to eq(2)
    end
  end

  
end