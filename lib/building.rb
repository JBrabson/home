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

  def average_rent
    @units.sum do |unit|
      unit.monthly_rent.to_f/2
    end
  end

  def rented_units
  @units.find_all do |unit|
    unit.renter
    end
  end

  def renter_with_highest_rent
      rented_units.max_by do |unit|
        unit.monthly_rent
      end.renter
  end
end
