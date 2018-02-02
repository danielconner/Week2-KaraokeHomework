require ("minitest/autorun")
require ("minitest/rg")

require_relative("../song.rb")

class SongTest < MiniTest::Test

  def setup
    @song = Song.new("22", "Taylor Swift")
  end

  def test_song_has_a_artist
    assert_equal("Taylor Swift", @song.artist())
  end

  def test_song_has_a_title
    assert_equal("22", @song.title())
  end



end
