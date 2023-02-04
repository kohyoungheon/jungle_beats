require './node'
require './linked_list'
require "./jungle_beat"

jb = JungleBeat.new
jb.append("tee tee")
jb.append("Mississippi")
jb.prepend("tee dee deep")
jb.all
# jb.reset_voice
# jb.reset_rate
jb.play
# require 'pry'; binding.pry
# require 'pry'; binding.pry
# `say -r 500 -v Boing #{jb.list.to_string}`
# require 'pry'; binding.pry