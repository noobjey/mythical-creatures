class Medusa
  attr_reader :name, :stare, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(person)
    turn_to_stone(person)
    add_a_statue(person)
  end

  def add_a_statue(person)
    @statues << person
  end

  def turn_to_stone(person)
    person.stoned = true
  end

end

class Person
  attr_accessor :name, :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end
end
