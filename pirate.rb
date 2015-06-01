class Pirate
  attr_reader :name, :job
  HEINOUS_ACTS_NEEDED_TO_BE_CURSED = 3

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @cursed = 0
  end


  def cursed?
    @cursed >= HEINOUS_ACTS_NEEDED_TO_BE_CURSED
  end

  def commit_heinous_act
    @cursed += 1
  end

end
