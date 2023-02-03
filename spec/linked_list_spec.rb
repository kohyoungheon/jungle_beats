require './lib/linked_list'
require 'rspec'

describe LinkedList do
  describe "#initialize" do
    it "is an instance of LinkedList" do
      linked_list = LinkedList.new
      expect(linked_list).to be_instance_of(LinkedList)
    end
  end
end