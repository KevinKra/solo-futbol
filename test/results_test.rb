require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/result.rb"
require_relative "../lib/stat_tracker.rb"
# require_relative "../data/mock_data/mock_results.csv"

class ResultTest < Minitest::Test
  def setup
    mock_results = "./data/mock_data/mock_results.csv"
    locations = {
      results: mock_results
    }
    stat_tracker = StatTracker.from_csv(locations)
    @result = Result.new(all_data[0])
    # require "pry"; binding.pry
  end

  def test_it_exists
    assert_instance_of Result, @result
  end

  # def test_it_returns_correct_percentage_home_games_won
  #   Result.games_by_team_id(6, @data, "home", "WIN")
  # end

  # def test_it_returns_correct_percentage_away_games_won

  # end

  # def test_it_returns_correct_percentage_games_tied

  # end

end
