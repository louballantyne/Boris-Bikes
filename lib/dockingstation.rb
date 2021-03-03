# require 'bike.rb'

class DockingStation
attr_reader :docking_station, :bike
  def initialize
    @docking_station = []
  end

  def release_bike
  	 @bike = Bike.new
  end

  def return_bike(bike)
    @docking_station << bike
  end

  def show_bikes
    @docking_station
  end

end

dock = DockingStation.new
puts dock
puts dock.empty?
