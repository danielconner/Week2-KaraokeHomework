require ("minitest/autorun")
require ("minitest/rg")

require_relative("../guest.rb")
require_relative("../song.rb")

class GuestTest < MiniTest::Test
  def setup
    @guest = Guest.new("Sophia", 28, 100.00, "You broke up with me")
    @song = Song.new("Taylor Swift", "22")
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

end
