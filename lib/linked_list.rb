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

    until current_node.next_node.nil?
      current_node = current_node.next_node
      string << " #{current_node.data}"
    end
    string
  end

  def prepend(data)
    @count += 1
    if @head.nil?
      @head = Node.new(data)
    else
    current_node = Node.new(data)
    current_node.next_node = @head
    @head = current_node
    end
  end

  def insert(index, data)
    @count = 1
    if index == 0
      prepend(data)
    else
      current_node = @head
      until @count == index
        current_node = current_node.next_node
        @count += 1
      end
      new_node = Node.new(data)
      new_node.next_node = current_node.next_node
      current_node.next_node = new_node
    end
  end

  def find(index, num_of_nodes)
    string_of_data = " "
    current_node = @head

    index.times do
      current_node = current_node.next_node
    end

    num_of_nodes.times do
      string_of_data << current_node.data + " "
      current_node = current_node.next_node
    end
    string_of_data.strip
  end

  def includes?(data)
    current_node = @head
    until current_node.next_node.nil? do
       return true if current_node.data == data
        current_node = current_node.next_node
      end
    false
  end

  def pop
    current_node = @head
    until current_node.next_node.next_node.nil? do #because you need at least 2 nodes
      current_node = current_node.next_node
    end
    last = current_node.next_node.data
    current_node.next_node = nil

    last
  end


end
