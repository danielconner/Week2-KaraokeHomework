require ("minitest/autorun")
require ("minitest/rg")

require_relative("../bar.rb")

class BarTest < MiniTest::Test

  def setup

    @bar = Bar.new(drinks = {
      Whiskey: 3.00,
      beer: 2.00,
      wine: 4.00,
      })
  end

  def test_bar_has_drinks
    drinks = {
      Whiskey: 3.00,
      beer: 2.00,
      wine: 4.00,
      }
    assert_equal(drinks, @bar.has_drinks())
  end


end
