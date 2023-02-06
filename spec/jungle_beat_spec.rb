require './lib/linked_list'
require './lib/node'
require './lib/jungle_beat'
require 'rspec'

describe JungleBeat do
  describe "#initialize" do
    it "is and instance of JungleBeat" do
      jb = JungleBeat.new
      expect(jb).to be_instance_of(JungleBeat)
    end
  end

  describe "#append" do
    it "appends only valid beats to the linked list" do
      jb = JungleBeat.new
      expect(jb.append("Mississippi")).to eq(0)
      expect(jb.append("tee dee deep")).to eq(3)
    end
  end

  

end