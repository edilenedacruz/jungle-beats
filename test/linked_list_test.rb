require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require 'pry'

class LinkedListTest < Minitest::Test

  def test_class_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

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

  def test_it_has_instance_of_node_in_head
    list = LinkedList.new
    list.append("doop")

    assert_instance_of Node, list.head
  end

  def test_heads_next_node_is_nil
    list = LinkedList.new
    list.append("doop")

    assert_nil list.head.next_node
  end

  def test_it_can_append_new_node
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    assert_equal "deep", list.head.next_node.data
  end

  def test_it_can_count_new_nodes
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    assert_equal 2, list.count
  end

  def test_string_has_all_elements_provided
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    assert_equal "doop deep", list.to_string
  end

  def test_it_can_prepend
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    assert_equal "dop", list.head.data
  end

  def test_string_has_prepended_data
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    assert_equal "dop plop suu", list.to_string
  end

  def test_it_counts_prepended_nodes
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    assert_equal 3, list.count
  end

  def test_it_can_insert_at_specific_index
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")

    assert_equal "woo", list.insert(1, "woo").data
  end

  def test_it_can_count_inserted_data
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")

    assert_equal "dop woo plop suu", list.to_string
  end

  def test_it_can_insert_at_different_index
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(2, "woo")

    assert_equal "dop plop woo suu", list.to_string
  end

  def test_it_can_have_five_words
    list = LinkedList.new
    list.append("woo")
    list.prepend("deep")
    list.append("blop")
    list.insert(2, "shu")
    list.insert(2, "shi")

    assert_equal "deep woo shi shu blop", list.to_string
  end

  def test_it_can_find_elements_at_specific_position_and_returns_n_elements
    list = LinkedList.new
    list.append("woo")
    list.prepend("deep")
    list.append("blop")
    list.insert(2, "shu")
    list.insert(2, "shi")

    assert_equal "shi", list.find(2, 1)
  end

  def test_it_can_find_elements_at_specific_position_and_returns_n_elements
    list = LinkedList.new
    list.append("woo")
    list.prepend("deep")
    list.append("blop")
    list.insert(2, "shu")
    list.insert(2, "shi")

    assert_equal "woo shi shu", list.find(1, 3)
  end

  def test_it_can_confirm_if_data_is_in_list
    list = LinkedList.new
    list.append("woo")
    list.prepend("deep")
    list.append("blop")
    list.insert(2, "shu")
    list.insert(2, "shi")

    assert_equal true, list.includes?("deep")
  end

  def test_it_can_confirm_if_data_is_in_list
    list = LinkedList.new
    list.append("woo")
    list.prepend("deep")
    list.append("blop")
    list.insert(2, "shu")
    list.insert(2, "shi")

    assert_equal false, list.includes?("dep")
  end

  def test_it_can_remove_last_data
    list = LinkedList.new
    list.append("woo")
    list.prepend("deep")
    list.append("blop")
    list.insert(2, "shu")
    list.insert(2, "shi")

    assert_equal "blop", list.pop
  end

  def test_it_can_remove_the_new_last_data
    list = LinkedList.new
    list.append("woo")
    list.prepend("deep")
    list.insert(2, "shu")
    list.insert(2, "shi")

    assert_equal "shu", list.pop
  end

  def test_it_still_can_add_to_string
    list = LinkedList.new
    list.append("woo")
    list.prepend("deep")
    list.insert(2, "shi")

    assert_equal "deep woo shi", list.to_string
  end

end
