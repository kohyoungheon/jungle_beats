require './node'
require './linked_list'

list = LinkedList.new
list.append("doop")
list.append("deep")
require 'pry'; binding.pry