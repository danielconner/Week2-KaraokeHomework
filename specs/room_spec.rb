require ("minitest/autorun")
require ("minitest/rg")

require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class RoomTest < MiniTest::Test

  def setup
    @room = Room.new("Cheesy Pop Room", 10.00)
    @song1 = Song.new("Aqua", "Barbie Girl")
    @song2 = Song.new("We're going to Ibiza", "Vengaboys")
    @song3 = Song.new("Summer of 69", "Bryan Adams")
    @song4 = Song.new("Basket Case", "Green Day")
    @guest1 = Guest.new("Sophia", 28, 100.00, "You broke up with me")
    @guest2 = Guest.new("Danny", 29, 10.00, "Basket Case")
  end

  def test_room_has_a_name
    assert_equal("Cheesy Pop Room", @room.name)
  end

  def test_room_has_a_fee
    assert_equal(10.00, @room.fee)
  end

  def test_room_capacity
    assert_equal(0,@room.capacity_count())
  end

  def test_add_guest_to_room
    @room.add_guest(@guest1)
    assert_equal(1, @room.capacity_count())
  end

  def test_remove_guest_from_room
    @room.add_guest(@guest1)
    @room.add_guest(@guest2)
    @room.remove_guest()
    assert_equal(1, @room.capacity_count())
  end

  def test_how_many_songs_on_playlist
    assert_equal(0, @room.playlist_length())
  end

  def test_add_songs_to_playlist
    @room.add_songs_to_playlist(@song1)
    @room.add_songs_to_playlist(@song2)
    @room.add_songs_to_playlist(@song3)
    assert_equal(3, @room.playlist_length())
  end

  def test_typical_karaoke_experience
    @room.add_guest(@guest1)
    @room.add_guest(@guest2)
    @room.add_songs_to_playlist(@song1)
    @room.add_songs_to_playlist(@song2)
    @room.add_songs_to_playlist(@song3)
    @guest1.add_to_song_queue(@song1)
    @guest1.song_has_been_sung()
    @room.remove_guest()
    @room.remove_guest()
  end


  def test_too_many_guests_in_room
    @room.add_guest(@guest1)
    @room.add_guest(@guest2)
    result = @room.is_room_over_capacity
    assert_equal("Too many people in the room", result)
  end

  def test_guest_can_afford_room
    @room.add_guest(@guest1)
    assert_equal(true, @room.guest_can_afford_room(@guest1))
  end

  def test_favourite_song_is_in_playlist
    @room.add_guest(@guest2)
    @room.add_songs_to_playlist(@song4)
    assert_equal("Yass they have #{@guest2.favourite_song_title}", @room.favourite_song_is_on_playlist(@guest2))
  end

end
