class Guest

  attr_reader :name, :age, :wallet, :favourite_song_title, :song_queue

  def initialize(name, age, wallet, favourite_song_title)
    @name = name
    @age = age
    @wallet = wallet
    @favourite_song_title = favourite_song_title
    @song_queue = []
  end

  def song_queue_count
    @song_queue.length()
  end

  def add_to_song_queue(song)
    @song_queue << song
  end

  def song_has_been_sung
    @song_queue.shift()
  end 

end
