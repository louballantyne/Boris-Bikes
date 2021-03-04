# require 'bike.rb'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :docking_station, :bike

  def initialize(capacity = 20)
    @docking_station = []
    @capacity = capacity
  end

  def release_bike
  	if empty?  
      raise "No bike"
    else
      if @docking_station.last.working? 

        @docking_station.pop
      else
        fail "No working bikes"
      end
    end
  end

  def return_bike(bike)
    full? ? (raise "Docking Station full") : @docking_station << bike
  end

  def show_bikes
    @docking_station
  end

  private

  def full?
    @docking_station.length >= @capacity ? true : false
  end

  def empty?
    @docking_station.empty? ? true : false
  end

end
