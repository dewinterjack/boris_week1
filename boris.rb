# Feature testing

require "./docking_station"

docking_station = DockingStation.new
bike = docking_station.release_bike
docking_station.dock_bike(bike)
docking_station.dock_bike(bike)
