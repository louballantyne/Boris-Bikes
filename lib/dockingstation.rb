# require 'bike.rb'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :docking_station, :bike

  # Initialize instance with a default capacity of 20.
  #@docking_station will store bike objects
  def initialize(capacity = 20)
    @docking_station = []
    @capacity = capacity
  end

  # If the array is empty, an error is raised if release_bike is called.
  # If it isn't empty, the last bike in the array is examined to see if it
  # is working. If it is working, it is returned and deleted from the array.


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

  # If the array is full, an error is returned. Otherwise, the bike is
  # added to the docking station array.
  def return_bike(bike)
    full? ? (raise "Docking Station full") : @docking_station << bike
  end

  # returns bikes in docking station array
  def show_bikes
    @docking_station
  end

  # Iterates through each bike in the docking station and checks if it has
  # the working attribute set to false. If it does, the bike is put into a
  # new array and deleted from the old one. The new array, containing broken
  # bikes is returned
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

  # delivers fixed bikes from the van to the docking station
  def receive_fixed_bikes (fixed_bikes)
    @docking_station += fixed_bikes
  end

  private

  # Checks if docking station is full
  def full?
    @docking_station.length >= @capacity ? true : false
  end

  # Checks if docking station is empty
  def empty?
    @docking_station.empty? ? true : false
  end

end
