# require 'bike.rb'

class DockingStation
attr_reader :docking_station, :bike
  def initialize
    @docking_station = []
  end

  def release_bike
  	 @docking_station.empty? ? (raise "No bike") : @docking_station.last
  end

  def return_bike(bike)
    
    @docking_station.empty? == false ? (raise "Docking Station full") : @docking_station << bike
  end

  def show_bikes
    @docking_station
  end

end
