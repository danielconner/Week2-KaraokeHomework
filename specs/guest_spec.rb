require ("minitest/autorun")
require ("minitest/rg")

require_relative("../guest.rb")
require_relative("../song.rb")
require_relative("../room.rb")
require_relative("../drinks.rb")


class GuestTest < MiniTest::Test
  def setup
    @guest = Guest.new("Sophia", 28, 0.00, "You broke up with me")
    @song = Song.new("Taylor Swift", "22")
    @room = Room.new("Cheesy Pop Room", 10.00)
    @drink1 = Drinks.new("Whiskey", 3.00)
    @drink2 = Drinks.new("Beer", 4.00)
    @drink3 = Drinks.new("Wine", 5.00)
  end

  def test_guest_has_a_name
    assert_equal("Sophia", @guest.name)
  end

  def test_guest_has_an_age
    assert_equal(28, @guest.age)
  end

  def test_guest_has_a_bar_tab
    assert_equal(0.00, @guest.bar_tab)
  end

  def test_can_add_and_remove_money
    assert_equal(10.00, @guest.can_add_and_remove_money(@room.fee))
  end

  def test_guest_has_a_favourite_song_title
    assert_equal("You broke up with me", @guest.favourite_song_title)
  end

  def test_is_the_guest_currently_singing
    assert_equal(0, @guest.song_queue_count())
  end

  def test_customer_can_request_song
    @guest.add_to_song_queue(@song)
    assert_equal(1, @guest.song_queue_count())
  end

  def test_customer_has_sung_song
    @guest.add_to_song_queue(@song)
    @guest.song_has_been_sung()
    assert_equal(0, @guest.song_queue_count())
  end

  def test_customer_can_buy_drinks
    assert_equal(5.00, @guest.can_buy_drink(@drink3.price))
  end
end
