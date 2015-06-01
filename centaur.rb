class Centaur
  attr_reader :name, :breed
  CRANKY_RESPONSE = "NO!"

  def initialize(name, breed)
    @name = name
    @breed = breed
    @standing = true
    @cranky = 0
  end


  def shoot
    return CRANKY_RESPONSE if not_ready_for_action
    getting_cranky
    "Twang!!!"
  end

  def getting_cranky
    @cranky += 1
  end

  def not_ready_for_action
    self.cranky? || self.laying?
  end

  def run
    return CRANKY_RESPONSE if not_ready_for_action
    getting_cranky
    "Clop clop clop clop!!!"
  end

  def cranky?
    @cranky >= 3
  end

  def standing?
    @standing
  end

  def sleep
    return CRANKY_RESPONSE if self.standing?
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
