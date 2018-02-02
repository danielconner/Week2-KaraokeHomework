require ("minitest/autorun")
require ("minitest/rg")

require_relative("../guest.rb")

class GuestTest < MiniTest::Test
  def setup
    @guest = Guest.new("Sophia", 28, 100.00, "You broke up with me")
  end

  def test_guest_has_a_name
    assert_equal("Sophia", @guest.name)
  end

  def test_guest_has_an_age
    assert_equal(28, @guest.age)
  end

  def test_guest_has_a_wallet
    assert_equal(100.00, @guest.wallet)
  end

  def test_guest_has_a_favourite_song_title
    assert_equal("You broke up with me", @guest.favourite_song_title)
  end


end
