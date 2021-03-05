class Bike

  attr_accessor :working

 # Bikes start out working
  def initialize
    @working = true
  end

  # Allows the user to check if the bike is working
  def working?
  	@working
  end


end
