require 'pry'
require_relative 'node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    @count += 1
    if @head.nil?
      @head = Node.new(data)
    else
      current_node = @head
      current_node = current_node.next_node until current_node.next_node.nil?
      current_node.next_node = Node.new(data)
    end
  end

  def count
    @count
  end

  def to_string
    string = ""
    current_node = @head
    string << current_node.data

    while current_node.next_node != nil
      current_node = current_node.next_node
      string << " #{current_node.data}"
    end
    string
  end

  def prepend(data)
    @count += 1
    prepend_node = Node.new(data)
    prepend_node.next_node = @head
    @head = prepend_node
  end

  # def insert(index, data)
  #   @count = 1
  #   if index == 0
  #     prepend(data)
  #   else
  #     current_node = @head
  #     until @count == index
  #       current_node = current_node.next_node
  #       @count += 1
  #     end
  #     new_node = Node.new(data)
  #     new_node.next_node = current_node.next_node
  #     current_node.next_node = new_node
  #   end
  # end

  def insert(index, data)
    @count = 0
    if index == 0
      prepend(data)
    else
      current_node = @head
      while @count != index - 1
        current_node = current_node.next_node
        @count += 1
      end
        new_node = Node.new(data)
        previous_node = current_node
        current_node = current_node.next_node
        new_node.next_node = current_node
        previous_node.next_node = new_node
      end
    end
end
