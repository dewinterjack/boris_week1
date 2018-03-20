# Feature testing

require "./docking_station"

docking_station = DockingStation.new

bike = docking_station.release_bike
bike.working?
