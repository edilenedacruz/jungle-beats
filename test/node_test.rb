require 'minitest/autorun'
require 'minitest/pride'
require "./lib/node"

class NodeTest < Minitest::Test

  def test_it_can_access_data
    node = Node.new("plop")

    assert_equal "plop", node.data
  end

  def test_next_node_is_nil 
    node = Node.new("plop")

    assert_equal nil, node.next_node
  end
end
