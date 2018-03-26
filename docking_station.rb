require './bike'

class DockingStation
  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  # A default capacity is used if none is specified.

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    # Nothing docked? Raise exception, otherwise release a bike, docked now is empty.
    @bikes.empty? ? raise("No bikes to release.") : next_working_bike
  end

  def next_working_bike
    @bikes.each do |bike|
      if !bike.broken then
        @working_bike = @bikes[@bikes.index(bike)]
        @bikes.delete_at(@bikes.index(bike))
        return @working_bike
      end
    end
    raise("No working bikes.")
  end

  def dock_bike(bike)
    # If there are less than 20 bikes, add it in.
    full? ? raise("Station is full.") : @bikes.push(bike)
  end

  private
  def full?
    @bikes.count == @capacity ? true : false
  end
end
