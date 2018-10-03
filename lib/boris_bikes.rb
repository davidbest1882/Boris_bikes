class DockingStation
  attr_accessor :bike_count

  def initialize
    @bike_count = 0
  end

  def release_bike
    if @bike_count > 0
    Bike.new
    else
      raise RuntimeError.new("No bikes available")
    end
  end

  def dock_bike(bike)
    bike.docked = true
    bike.docked
  end
end


class Bike
  attr_accessor :docked

  def initialize
    @docked = false
  end

  def working?
    true
  end
end
