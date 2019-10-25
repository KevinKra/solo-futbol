require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/result.rb"

class ResultTest < Minitest::Test
  def setup
    @result = Result.new
  end

  def test_it_exists
    assert_instance_of Result, @result
  end
end
