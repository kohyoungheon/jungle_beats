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

  describe  "#to_string" do
    it "outputs the data values in the linked list into a string" do
      linked_list = LinkedList.new
      linked_list.append("doop")
      linked_list.append("deep")
      expect(linked_list.to_string).to eq("doop deep")
    end
  end

  describe "#insert" do
    it "inserts a new node at a given index" do
      linked_list = LinkedList.new
      linked_list.append("doop")
      linked_list.append("deep")
      linked_list.insert(1,"dip")
      expect(linked_list.to_string).to eq ("doop dip deep")
      expect(linked_list.insert(10,"boop")).to eq ("The list is only 3 nodes long.")
    end
  end

  describe "#prepend" do
    it "adds a new node to the head of the linked list" do
      linked_list = LinkedList.new
      linked_list.append("doop")
      linked_list.append("deep")
      linked_list.prepend("hip")
      expect(linked_list.to_string).to eq ("hip doop deep")
    end
  end

  describe "#find" do
    it "finds the node at the given index and returns the number of elements after" do
      linked_list = LinkedList.new
      linked_list.append("doop")
      linked_list.append("deep")
      linked_list.append("beep")
      expect(linked_list.find(1,2)).to eq (["deep", "beep"])
      expect(linked_list.find(1,10)).to eq ("The list is only 3 nodes long.")
    end
  end

  describe "#includes" do
    it "checks whether the given string exists in the linked list" do
      linked_list = LinkedList.new
      linked_list.append("doop")
      linked_list.append("deep")
      linked_list.append("beep")
      expect(linked_list.includes?("doop")).to eq (true)
      expect(linked_list.includes?("bop")).to eq (false)
    end
  end

  describe "#pop" do
    it "removes the last node from the linked list" do
      linked_list = LinkedList.new
      linked_list.append("doop")
      linked_list.append("deep")
      linked_list.append("beep")
      expect(linked_list.pop).to eq ("beep")
      expect(linked_list.to_string).to eq ("doop deep")
    end
  end
end