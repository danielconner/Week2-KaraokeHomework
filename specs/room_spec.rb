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
    @songs3 = Song.new("Summer of 69", "Bryan Adams")
    @guest1 = Guest.new("Sophia", 28, 100.00, "You broke up with me")
    @guest2 = Guest.new("Danny", 29, 10.00, "Basket Case")
    @songs = [@song1,@song2,@song3]
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

  def test_room_has_songs
    assert_equal(3, @room.song_count())
  end 

end
