require_relative "./stat_tracker.rb"

# games_path = "../data/data_games.csv"
# teams_path = '../data/data_teams.csv'
results_path = './data/data_results.csv'

locations = {
  # games: games_path,
  # teams: teams_path,
  results: results_path
}

stat_tracker = StatTracker.from_csv(locations)

require 'pry'; binding.pry