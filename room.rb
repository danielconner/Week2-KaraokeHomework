class Room

  attr_reader :name, :fee

  def initialize(name, fee)
    @name = name
    @fee = fee
    @capacity = []
    @playlist=[]
  end

  def capacity_count
    @capacity.length
  end

  def add_guest(guest)
    @capacity << guest
  end

  def remove_guest
    @capacity.pop()
  end

  def playlist_length
    @playlist.length()
  end

  def add_songs_to_playlist(songs)
    @playlist << songs
  end

  def is_room_over_capacity
    if @capacity.length >= 1
      return "Too many people in the room"
    end
  end

  def guest_can_afford_room(guest)
    if guest.wallet >= @fee
      return true
    else
      return "Please leave you cannot afford to sing here!"
    end
  end

end
