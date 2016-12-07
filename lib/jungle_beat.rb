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

  def play
    data = @list.to_string
    `say -r 500 -v Boing #{data}`
    # "#{@beats}"
  end
end

# jb = JungleBeat.new
# jb.append("ding dah oom oom ding oom oom oom ding dah oom oom ding dah oom oom ding dah oom oom ")
# jb.play
