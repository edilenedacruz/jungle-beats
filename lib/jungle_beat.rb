require_relative 'linked_list'

class JungleBeat
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(data)
    data.split.map do |word|
      @list.append(word)
    end
    data
  end

  def count
    @list.count
  end
end
