require './bike'

class DockingStation
  attr_reader :bike

  def release_bike
    empty? ? raise('No bikes to release.') : @bike
  end

  def dock_bike(bike)
    @bike = bike
  end

# Is there a bike in the docking station?
  def empty?
    return @bike == nil ? true : false
  end

end
