require './bike'

class DockingStation
  attr_reader :bike

  DEFAULT_CAPACITY = 20

  def initialize
    @bike = []
  end

  def release_bike
    # Nothing docked? Raise exception, otherwise release a bike, docked now is empty.
    @bike.empty? ? raise("No bikes to release.") : @bike.pop
  end

  def dock_bike(bike)
    # If there are less than 20 bikes, add it in.
    @bike.full? ? raise("Station is full.") : @bike.push(bike)
  end

  private
  def full?
    @bike.count == DEFAULT_CAPACITY ? true : false
  end
end
