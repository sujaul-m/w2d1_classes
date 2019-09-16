require("minitest/autorun")
require("minitest/rg")
require_relative("../part_b")

class TestSportsTeam< MiniTest::Test

  def test_get_team_name
    team = SportsTeam.new("Tigers", ["Steve", "Tony", "Bruce"], "Sujaul")
    p team
    assert_equal("Tigers", team.get_team_name())
  end

  def test_get_players
    team = SportsTeam.new("Tigers", ["Steve", "Tony", "Bruce"], "Sujaul")
    assert_equal(["Steve", "Tony", "Bruce"], team.get_players())
  end

  def test_get_coach_name
    team = SportsTeam.new("Tigers", ["Steve", "Tony", "Bruce"], "Sujaul")
    assert_equal("Sujaul", team.get_coach_name())
  end

  def test_set_team_name
    team = SportsTeam.new("Tigers", ["Steve", "Tony", "Bruce"], "Sujaul")
    result = team.set_team_name("Panda")
    assert_equal("Panda", result)
  end

  def test_set_coach_name
    team = SportsTeam.new("Tigers", ["Steve", "Tony", "Bruce"], "Sujaul")
    result = team.set_coach_name("Karim")
    assert_equal("Karim", result)
  end

end
