require './bike'

class DockingStation
  attr_reader :bike, :capacity

  DEFAULT_CAPACITY = 20

  # A default capacity is used if none is specified.

  def initialize(capacity = DEFAULT_CAPACITY)
    @bike = []
    @capacity = capacity
  end

  def release_bike
    # Nothing docked? Raise exception, otherwise release a bike, docked now is empty.
    @bike.empty? ? raise("No bikes to release.") : @bike.pop
  end

  def dock_bike(bike)
    # If there are less than 20 bikes, add it in.
    full? ? raise("Station is full.") : @bike.push(bike)
  end

  private
  def full?
    @bike.count == @capacity ? true : false
  end
end
