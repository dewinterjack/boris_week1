require "./docking_station"

describe DockingStation do

  # Defines a bike before each example.
  before(:each) do
    @bike = subject.release_bike
  end

  it "releases a bike that works." do
    expect(@bike.working?).to eq true
  end

  it {is_expected.to respond_to(:dock_bike).with(1).argument}

  it "docks a bike" do
    subject.dock_bike(@bike)
    expect(subject.bike).to eq @bike
  end

end
