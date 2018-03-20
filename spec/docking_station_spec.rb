require "./docking_station"
require "./bike"

describe DockingStation do
  it {respond_to(:release_bike)}
    #bike = DockingStation.new.release_bike
    #expect(bike.working?).to eq(true)
end

describe Bike do
   it "expects bike to be working" do
     expect(Bike.new.working?).to eq(true)
   end
end
