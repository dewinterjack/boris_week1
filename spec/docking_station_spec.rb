require "./docking_station"
require "./bike"

describe DockingStation do
  it {respond_to(:release_bike)}
  it "Bike is working" do
    bike = DockingStation.new.release_bike
    expect(bike.working?).to eq(true)
  end
end
