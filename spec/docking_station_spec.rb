require "./docking_station"

describe DockingStation do
  it "releases a bike that works." do
    bike = subject.release_bike
    expect(bike.working?).to eq(true)
  end
  it {is_expected.to respond_to(:dock_bike)}
end
