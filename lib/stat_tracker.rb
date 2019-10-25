require "csv"
require_relative "./result.rb"

class StatTracker
  def self.from_csv(location_paths)
    result_data = Result.parse_csv_data(location_paths[:results])
    StatTracker.new
  end

  def percentage_home_wins(team_id)
    Result.games_by_team_id(team_id, "home", "WIN")
  end

  def percentage_visitor_wins(team_id)
    Result.games_by_team_id(team_id, "away", "WIN")
  end

  def percentage_ties(team_id)
    Result.games_by_team_id(team_id, "away", "TIE")
  end
  
end