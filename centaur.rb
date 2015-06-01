class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @standing = true
    @cranky = 0
  end

  def shoot
    return "NO!" if self.cranky? || self.laying?
    @cranky += 1
    "Twang!!!"
  end

  def run
    return "NO!" if self.cranky? || self.laying?
    @cranky += 1
    "Clop clop clop clop!!!"
  end

  def cranky?
    @cranky >= 3
  end

  def standing?
    @standing
  end

  def sleep
    return "NO!" if self.standing?
    @cranky = 0
  end

  def lay_down
    @standing = false
  end

  def laying?
    !self.standing?
  end

  def stand_up
    @standing = true
  end

end
