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
    @bike.empty? ? raise("No bikes to release.") : next_working_bike
  end

  def next_working_bike
    @bike.each do |abike|
      bike.broken ? next : break
    end
    bike.broken ? raise("No working bikes.") : bike
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
