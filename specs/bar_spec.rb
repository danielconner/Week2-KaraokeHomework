require ("minitest/autorun")
require ("minitest/rg")

require_relative("../bar.rb")
require_relative("../drinks.rb")

class BarTest < MiniTest::Test

  def setup
    @bar = Bar.new(0)
    @drink1 = Drinks.new("Whiskey", 3.00)
    @drink2 = Drinks.new("Beer", 4.00)
    @drink3 = Drinks.new("Wine", 5.00)
  end

  def test_bar_has_total
    assert_equal(0,@bar.total)
  end

  def test_can_add_to_bar_total
    assert_equal(3.00, @bar.total_can_be_added_to(@drink1.price))
  end
#next thing to do add drink value to bar total and check that you can take drink
#drink value from customers wallet

end
