require "./docking_station"


describe DockingStation do

  it "releases a bike that works." do
    bike = subject.release_bike
    expect(bike.working?).to eq true
  end

  it {is_expected.to respond_to(:dock_bike).with(1).argument}
  it "docks a bike" do
    bike = subject.release_bike
    subject.dock_bike(bike)
    expect(subject.bike).to eq bike
  end
end
