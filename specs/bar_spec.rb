require ("minitest/autorun")
require ("minitest/rg")

require_relative("../bar.rb")
require_relative("../drinks.rb")

class BarTest < MiniTest::Test

  def setup
    @bar = Bar.new(0)
  end

  def test_bar_has_total
    assert_equal(0,@bar.total)

  end


end
