require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require 'pry'

class LinkedListTest < Minitest::Test
  def test_head_is_nil_by_default
    list = LinkedList.new

    assert_nil list.head
  end

  def test_it_can_append_to_head_if_its_empty
    list = LinkedList.new
    list.append("doop")

    assert_equal "doop", list.head.data
  end

  def test_next_node_is_nil
    list = LinkedList.new
    list.append("doop")

    assert_nil list.head.next_node
  end

  def test_it_can_count_number_of_nodes
    list = LinkedList.new
    list.append("doop")

    assert_equal 1, list.count
  end

  def test_it_can_generate_a_string_of_all_elements_in_the_list
    list = LinkedList.new
    list.append("doop")

    assert_equal "doop", list.to_string
  end

end
