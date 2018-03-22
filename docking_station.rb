require './bike'

class DockingStation
  attr_reader :bike

  def initialize
    @bike = Bike.new
    @docked = true
  end

  def release_bike
    # Nothing docked? Raise exception, otherwise release a bike, docked now is empty.
    !@docked ? raise('No bikes to release.') : @docked = false
    @bike
  end

  def dock_bike(bike)
    @bike = bike
  end

end
