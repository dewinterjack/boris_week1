require "./docking_station"

describe DockingStation do

  # Defines a bike before each example.
  before(:each) do
    @bike = Bike.new
    subject.dock_bike(@bike)
  end

  describe "#release_bike" do
    it "raises exception if station is empty when releasing" do
      subject.release_bike
      expect { subject.release_bike }.to raise_exception "No bikes to release." # Bike released already
    end

    it "releases a bike that works." do
      expect(@bike.working?).to eq true
    end

    it "does not release broken bikes" do
      station = DockingStation.new
      new_bike = Bike.new
      another_bike = Bike.new
      another_bike.report_broken
      subject.dock_bike(new_bike)
      subject.dock_bike(another_bike)
      expect(subject.release_bike.broken).to eq false
    end
  end

  describe "#dock_bike" do

    it {is_expected.to respond_to(:dock_bike).with(1).argument}

    it "docks a bike" do
      # Checks if the last element in array is the one last docked.
      expect(subject.bike[-1]).to eq @bike
    end

    it "raises exception if bike is docked when station is full" do
      reach_max = subject.capacity - 1 # Already created a bike in before each
      reach_max.times { subject.dock_bike Bike.new}
      expect { subject.dock_bike(@bike)}.to raise_exception "Station is full."
    end

  end

  it "can be initialised with a default capacity" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it "can be initialised with a custom capacity" do
    station = DockingStation.new(5)
    expect(station.capacity).to eq 5
  end
end
