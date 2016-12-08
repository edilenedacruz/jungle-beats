require_relative 'linked_list'

class JungleBeat
  attr_accessor :list, :rate, :voice
  def initialize
    @list = LinkedList.new
    @rate = 500
    @voice = "Boing"
  end

  def append(data)
    data.split.map do |word|
      list.append(word)
    end
    data
  end

  def count
    list.count
  end

  def play
    data = @list.to_string
    `say -r #{rate_input} -v #{voice_input} #{data}`
    "#{data}"
  end

  def rate
    @rate
  end

  def voice
    @voice
  end

  def reset_rate
    @rate = 500
  end

  def reset_voice
    @voice = "Boing"
  end

  def rate_input
    puts "You can choose the pace of your drums. Please enter a number between 100 and 500"
    rate_input = gets.chomp
  end

  def voice_input
    puts "You can also choose how your drums sound. Please type one of the following voices: Boing, Fred, Samantha, Victoria, Hysterical, Sin-ji, Nikos, Luca, Kyoko, Luciana or Kanya. "
    voice_input = gets.chomp.capitalize!
  end
end

# jb = JungleBeat.new
# jb.append("ding dah oom oom ding oom oom oom ding dah oom oom ding dah oom oom ding dah oom oom")
# jb.play
