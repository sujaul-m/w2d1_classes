class SportsTeam

  attr_accessor(:team_name, :players, :coach_name)

  def initialize(input_team_name, input_players, input_coach_name)
    @team_name = input_team_name
    @players = input_players
    @coach_name = input_coach_name
  end

end
