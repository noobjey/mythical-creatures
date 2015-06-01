class Hobbit
  attr_reader :name, :disposition, :age
  COME_OF_AGE = 33

  def initialize(name, disposition = 'homebody')
    @name        = name
    @disposition = disposition
    @age         = 0
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    @age >= COME_OF_AGE
  end

end
