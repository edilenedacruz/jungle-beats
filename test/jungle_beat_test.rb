require 'minitest/autorun'
require 'minitest/pride'
require './lib/jungle_beat'
require 'pry'

class JungleBeatTest < Minitest::Test

  def test_it_initializes_with_a_linked_list
    jb = JungleBeat.new

    assert_equal JungleBeat, jb.class
  end

  def test_it_initializes_with_a_linked_list
    jb = JungleBeat.new

    assert_equal LinkedList, jb.list.class
  end

  def test_it_can_access_that_head_is_nill
    jb = JungleBeat.new

    assert_nil jb.list.head
  end

  def test_it_can_append_multiple_nodes
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
    assert_equal 6, jb.list.count
  end

  def test_it_can_play_sounds
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")
    jb.play

    assert_equal "deep doo ditt woo hoo shu", jb.play
  end

  def test_user_can_change_rate
    jb = JungleBeat.new
    jb.append("deep dop dop deep")
    jb.rate = 100

    assert_equal 100, jb.rate
  end

  def test_it_can_change_voice
    jb = JungleBeat.new
    jb.append("deep dop dop deep")
    jb.rate = 100
    jb.voice = "Alice"
    jb.play
    assert_equal "Alice", jb.voice
  end

  def test_it_can_reset_rate
    jb = JungleBeat.new
    jb.append("deep dop dop deep")
    jb.rate = 100
    jb.play
    jb.voice = "Alice"
    jb.play
    jb.reset_rate
    jb.play
    assert_equal 500, jb.reset_rate
  end

  def test_it_can_reset_voice
    jb = JungleBeat.new
    jb.append("deep dop dop deep")
    jb.rate = 100
    jb.voice = "Alice"
    jb.play
    jb.reset_voice
    jb.play
    assert_equal "Boing", jb.reset_voice
  end

  def test_if_user_can_control_rate_and_voice
    jb = JungleBeat.new
    jb.append("ding, dah, oom, oom, ding, oom, oom, oom, ding, dah, oom")
    jb.rate_input
    jb.voice_input
    jb.play
    assert_equal "ding, dah, oom, oom, ding, oom, oom, oom, ding, dah, oom", jb.play
  end

end
