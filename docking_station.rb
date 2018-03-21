require './bike'

class DockingStation
  attr_reader :bike

  def initialize
    @bike = Bike.new
  end

  def release_bike
    give_bike = @bike
    @bike = nil
    give_bike
  end

  def dock_bike(bike)
    @bike = bike
  end

# Is there a bike in the docking station?
  def empty?
    return @bike == nil ? true : false
  end

end
