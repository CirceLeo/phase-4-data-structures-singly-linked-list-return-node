require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  # def nth_from_end(n)
  #   counter = 0 
  #   current = @head
  #   until current.nil?
  #     current = current.next_node
  #     counter = counter + 1
  #   end

  #   return nil if n < 1 || n > counter

  #   node = head
  #   i = 1 
  #   while i < counter - n + 1
  #     node = node.next_node
  #     i +=  1
  #   end 
  #   node.value
  # end

  def nth_from_end(n)

    return nil if head.nil? || n < 1

    n_from_back = head
    leader = head

    counter = 0
    while counter < n
      return nil if leader.nil?

      leader = leader.next_node
      counter += 1
    end

    until leader.nil?
      leader = leader.next_node
      n_from_back = n_from_back.next_node
    end
  
    n_from_back.value
  end

end
