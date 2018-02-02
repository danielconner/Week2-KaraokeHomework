class Bar

  attr_reader :total

  def initialize(total)
    @total = total
  end

  def total_can_be_added_to(drink)
    @total += drink
  end

end
