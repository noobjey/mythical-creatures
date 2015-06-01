class Phoenix
  attr_reader :name, :age, :lifes_left
  AGE_CONSIDERED_ADULT = 150

  def initialize(name)
    @name  = name
    @age   = 0
    @alive = true
    @lifes_left = 4
  end

  def cakeday
    @age += 1
  end


  def adult?
    @age > AGE_CONSIDERED_ADULT
  end

  def alive?
    @alive
  end

  def get_killed
    return "IM DEAD ALREADY DUMASS" if self.dead?
    @alive = false
  end

  def revive
    if out_of_lives? && dead?
      @alive = true
      use_a_life
    end
  end

  def dead?
    !alive?
  end

  def use_a_life
    @lifes_left -= 1
  end

  def out_of_lives?
    !@lifes_left.zero?
  end
end
