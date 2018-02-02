class Room

  attr_reader :name, :fee

  def initialize(name, fee)
    @name = name
    @fee = fee
    @capacity = []
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

  def song_count
    @songs.length()
  end

end
