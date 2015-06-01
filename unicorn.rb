class Unicorn
  attr_reader :color, :name
  COLOR = "white"

  def initialize(name, color = COLOR)
    @name = name
    @color = color
  end

  def white?
    @color.eql? COLOR
  end

  def say(message)
    "**;* #{message} **;*"
  end
end
