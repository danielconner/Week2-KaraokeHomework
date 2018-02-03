class Guest

  attr_reader :name, :age, :bar_tab, :favourite_song_title, :song_queue

  def initialize(name, age, bar_tab, favourite_song_title)
    @name = name
    @age = age
    @bar_tab = 0
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

  def can_add_and_remove_money(fee)
    @bar_tab += fee
  end

  def can_buy_drink(drink)
    @bar_tab += drink
  end


end
