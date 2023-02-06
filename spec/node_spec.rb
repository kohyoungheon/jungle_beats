require './lib/node'
require 'rspec'

describe Node do
  describe "#initialize" do
    it "is an instance of Node" do
      node_1 = Node.new("plop")
      expect(node_1). to be_instance_of(Node)
    end
    it "has a data attribute" do
      node_1 = Node.new("plop")
      expect(node_1.data). to eq ("plop")
    end
    it "has a next_node attribute" do
      node_1 = Node.new("plop")
      expect(node_1.next_node). to eq (nil)
    end
  end
end