require_relative './node'
require 'pry'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    return if self.head == self.tail

    curr = self.tail 
    old_head = self.head
    self.head = curr
    until curr == nil
      old_prev = curr.prev_node
      old_next = curr.next_node
      curr.prev_node = old_next
      curr.next_node = old_prev
      curr = old_prev
    end
    self.tail = old_head
  end

end
