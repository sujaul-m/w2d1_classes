require("minitest/autorun")
require("minitest/rg")
require_relative("../part_b")

class TestSportsTeam< MiniTest::Test

  def test_get_team_name
    team = SportsTeam.new("Tigers", ["Steve", "Tony", "Bruce"], "Sujaul")
    p team
    assert_equal("Tigers", team.team_name())
  end

  def test_get_players
    team = SportsTeam.new("Tigers", ["Steve", "Tony", "Bruce"], "Sujaul")
    assert_equal(["Steve", "Tony", "Bruce"], team.players())
  end

  def test_get_coach_name
    team = SportsTeam.new("Tigers", ["Steve", "Tony", "Bruce"], "Sujaul")
    assert_equal("Sujaul", team.coach_name())
  end

  def test_set_team_name
    team = SportsTeam.new("Tigers", ["Steve", "Tony", "Bruce"], "Sujaul")
    team.team_name = "Panda"
    assert_equal("Panda", team.team_name())
  end

  def test_set_coach_name
    team = SportsTeam.new("Tigers", ["Steve", "Tony", "Bruce"], "Sujaul")
    team.coach_name = "Karim"
    assert_equal("Karim", team.coach_name())
  end

end
