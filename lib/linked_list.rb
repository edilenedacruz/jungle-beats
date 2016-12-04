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

end
