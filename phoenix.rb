class Phoenix
  attr_reader :name, :age
  AGE_CONSIDERED_ADULT = 150

  def initialize(name)
    @name  = name
    @age   = 0
    @alive = true
    @lives = 4
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
    @alive = false
  end

  def revive
    if out_of_lives?
      @alive = true
      use_a_life
    end
  end

  def use_a_life
    @lives -= 1
  end

  def out_of_lives?
    !@lives.zero?
  end
end
