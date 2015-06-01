class Wizard
  attr_reader :name, :bearded

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
  end

  def bearded?
    @bearded
  end

  def incantation(incant)
    "sudo #{incant}"
  end
end
