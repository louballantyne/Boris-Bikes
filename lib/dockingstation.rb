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

  def release_broken_bikes
    broken_bikes = Array.new
    @docking_station.each do |bike|
      if !bike.working?
        broken_bikes << bike
        @docking_station.delete(bike)
      end
    end
    broken_bikes
  end

  def receive_fixed_bikes (fixed_bikes)
    @docking_station += fixed_bikes
  end

  private

  def full?
    @docking_station.length >= @capacity ? true : false
  end

  def empty?
    @docking_station.empty? ? true : false
  end

end
