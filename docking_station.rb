require './bike'

class DockingStation
  attr_reader :bike

  def initialize
    @bike = Bike.new
    @docked = true
  end

  def remove_bike
    @bike = nil
  end

  def release_bike
    !@docked ? raise('No bikes to release.') : @docked = false
    @bike
  end

  def dock_bike(bike)
    @bike = bike
  end

end
