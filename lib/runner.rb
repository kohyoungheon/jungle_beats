require './node'
require './linked_list'
require "./jungle_beat"

jb = JungleBeat.new
jb.append("deep doo ditt woo hoo shu")
jb.play
require 'pry'; binding.pry
# require 'pry'; binding.pry
# `say -r 500 -v Boing #{jb.list.to_string}`
# require 'pry'; binding.pry