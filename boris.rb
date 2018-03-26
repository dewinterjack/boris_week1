# Feature testing

require "./docking_station"

docking_station = DockingStation.new(1)
docking_station.dock_bike(Bike.new)
bike = docking_station.release_bike
puts bike.broken
docking_station.release_bike
puts bike.broken

# bike = docking_station.release_bike
# docking_station.dock_bike(bike)
# docking_station.dock_bike(bike)
