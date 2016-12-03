require 'pry'
require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
      @count += 1
    end
  end

  def count
    @count
  end

  def to_string
    string = ""
    string << @head.data
  end

end
