require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/stat_tracker.rb'

class StatTrackerTest < Minitest::Test
  def setup
    result_path = './data/mock_data/mock_results.csv'
    locations = {
      result: result_path
    }
    @stat_tracker = StatTracker.from_csv(locations)
  end

  def test_it_exists
    assert_instance_of StatTracker, @stat_tracker
  end

  # def test_initialized
  #   assert_equal 7, @stat_tracker.result_data.length
  # end
  
  # def test_it_can_return_a_percentage_of_home_games_won
  #   assert_equal 66.67, @stat_tracker.percentage_home_wins(6)
  # end 

  # def test_it_can_return_a_percentage_of_away_games_won
  #   assert_equal 100, @stat_tracker.percentage_visitor_wins(6)
  # end

  # def test_it_can_return_a_percentage_of_games_tied
  #   assert_equal 33.33, @stat_tracker.percentage_ties(3)
  # end


end
