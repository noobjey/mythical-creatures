require "minitest/autorun"
require "minitest/pride"
require_relative "phoenix"

class PhoenixTest < Minitest::Test

  def test_it_has_a_name
    phoenix = Phoenix.new("Geoffrey")

    assert_equal "Geoffrey", phoenix.name
  end

  def test_it_has_an_age
    phoenix = Phoenix.new("Geoffrey")

    assert_equal 0, phoenix.age
  end

  def test_it_ages_when_it_has_a_birthday
    phoenix = Phoenix.new("Alexander")

    phoenix.cakeday

    assert_equal 1, phoenix.age
  end

  def test_it_ages_a_lot_when_it_has_many_birthdays
    phoenix = Phoenix.new("Fawkes")

    50.times do
      phoenix.cakeday
    end

    assert_equal 50, phoenix.age
  end

  def test_it_becomes_an_adult_after_150
    phoenix = Phoenix.new("Esmerelda")

    149.times do
      phoenix.cakeday
    end

    refute phoenix.adult?

    2.times do
      phoenix.cakeday
    end

    assert phoenix.adult?
  end

  def test_its_alive_when_created
    phoenix = Phoenix.new("Dolores Umbridge")

    assert phoenix.alive?
  end

  def test_its_dead_when_killed
    phoenix = Phoenix.new("Grasshopper")

    phoenix.get_killed

    refute phoenix.alive?
  end

  def test_it_can_revive
    phoenix = Phoenix.new("Luna")

    phoenix.get_killed

    refute phoenix.alive?

    phoenix.revive

    assert phoenix.alive?
  end

  def test_it_can_only_revive_four_times
    phoenix = Phoenix.new("George")

    assert phoenix.alive?

    4.times do
      phoenix.get_killed
      phoenix.revive
    end

    phoenix.get_killed
    refute phoenix.alive?
    phoenix.revive
    refute phoenix.alive?
  end

end
