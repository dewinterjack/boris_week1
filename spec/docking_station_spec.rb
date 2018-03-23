require "./docking_station"

describe DockingStation do

  # Defines a bike before each example.
  before(:each) do
    @bike = Bike.new
    subject.dock_bike(@bike)
  end

  it "releases a bike that works." do
    expect(@bike.working?).to eq true
  end

  it {is_expected.to respond_to(:dock_bike).with(1).argument}

  it "docks a bike" do
    # Checks if the last element in array is the one last docked.
    expect(subject.bike[-1]).to eq @bike
  end

  it "raises exception if station is empty when releasing" do
    subject.release_bike
    expect { subject.release_bike }.to raise_exception "No bikes to release." # Bike released already
  end

  it "raises exception if docking bike when station is full" do
    19.times { subject.dock_bike Bike.new}
    expect { subject.dock_bike(@bike)}.to raise_exception "Station is full."
  end
end
