class Werewolf

  attr_reader :name, :location

  def initialize(name, location = 'nowhere')
    @name = name
    @location = location
  end

  def human?
    true
  end
end
