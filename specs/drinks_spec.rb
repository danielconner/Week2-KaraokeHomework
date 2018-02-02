require ("minitest/autorun")
require ("minitest/rg")

require_relative("../drinks.rb")



class DrinksTest < MiniTest::Test

  def setup
    @drink1 = Drinks.new("Whiskey", 3.00)
    @drink2 = Drinks.new("Beer", 4.00)
    @drink3 = Drinks.new("Wine", 5.00)
  end

  def test_drinks_have_name
    assert_equal("Whiskey", @drink1.name)
  end

  def test_drinks_have_price
    assert_equal(3.00, @drink1.price)
  end
end
