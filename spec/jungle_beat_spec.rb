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
    it "appends only valid beats to the linked list and returns the number of beats appended" do
      jb = JungleBeat.new
      expect(jb.append("Mississippi")).to eq(0)
      expect(jb.append("tee dee deep")).to eq(3)
    end
  end
  describe "#count" do
    it "counts the number of nodes in the linked_list" do
      jb = JungleBeat.new
      jb.append("tee dee deep bop boop")
      expect(jb.count).to eq(5)
    end
  end
  describe "#play" do
    it "plays the beats inside the linked list" do
      jb = JungleBeat.new
      jb.append("tee dee deep bop boop")
      expect(jb.play).to eq(5)
    end
  end
  describe "#all" do
    it "returns all the beats in the linekd list as a string" do
      jb = JungleBeat.new
      jb.append("tee dee deep bop boop")
      expect(jb.all).to eq("tee dee deep bop boop")
    end
  end
  describe "#prepend" do
    it "prepends only valid beats to the linked list and returns number of beats prepended" do
      jb = JungleBeat.new
      expect(jb.prepend("tee dee")).to eq(2)
      expect(jb.prepend("Mississippi")).to eq(0)
    end
  end
  describe "#reset_rate" do
    it "resets the rate of the voice to 500" do
      jb = JungleBeat.new
      expect(jb.reset_rate).to eq (500)
    end
  end
  describe "#reset_voice" do
    it "resets the voice to Boing" do
      jb=JungleBeat.new
      expect(jb.reset_voice).to eq("Boing")
    end
  end
end