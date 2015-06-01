class Werewolf

  attr_reader :name, :location

  def initialize(name, location = 'nowhere')
    @name = name
    @location = location
    @human = true
  end

  def human?
    @human
  end

  def change!
    @human = !@human
  end

  def werewolf?
    !@human
  end
end
