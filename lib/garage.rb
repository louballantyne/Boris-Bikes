class Garage
    # collects broken bikes passed in from van
    # creates a variable containing these bikes
    def receive_broken_bikes (broken_bikes)
        @bikes = broken_bikes
    end

    # calls method which sets working value for each bike in the array to true
    # returns an array containing the fixed bikes
    def return_bikes
        fix_bikes
        @bikes
    end

    private

    # sets working value for each bike in the array to true
    def fix_bikes
        @bikes.each { |bike| bike.working = true }
    end
end
