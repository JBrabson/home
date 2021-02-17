class Building
  attr_reader :units,
              :rented_units,
              :renters

  def initialize
    @units = []
    @rented_units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    list = []
    @units.each do |unit|
      if unit.renter != nil
      list << unit.renter.name
    end
    end
    list
  end
end
