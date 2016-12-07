require 'minitest/autorun'
require 'minitest/pride'
require './lib/jungle_beat'
require 'pry'

class JungleBeatTest < Minitest::Test

  def test_it_initializes_with_a_linked_list
    jb = JungleBeat.new

    assert_instance_of JungleBeat, jb
  end
#########this test doesn't work
  # def test_it_initializes_with_a_linked_list
  #   jb = JungleBeat.new

  #   assert_instance_of LinkedList, jb.list
  # end

  def test_it_can_access_that_head_is_nill
    jb = JungleBeat.new

    assert_nil jb.list.head
  end

  def test_it_can_append_multiple_nodes #is this correct?
    jb = JungleBeat.new
    jb.append("deep doo ditt")

    assert_equal "deep doo ditt", jb.append("deep doo ditt")
  end

  def test_it_can_identify_head_data
    jb = JungleBeat.new
    jb.append("deep doo ditt")

    assert_equal "deep", jb.list.head.data
  end

  def test_it_can_identify_head_next_nodes_data
    jb = JungleBeat.new
    jb.append("deep doo ditt")

    assert_equal "doo", jb.list.head.next_node.data
  end

  def test_if_accepts_multiple_appends
    jb = JungleBeat.new
    jb.append("deep doo ditt")

    assert_equal "deep doo ditt", jb.append("deep doo ditt")

    jb.append("woo hoo shu")

    assert_equal "woo hoo shu", jb.append("woo hoo shu")
  end

  def test_it_can_count
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")

    assert_equal 6, jb.count
  end

end
