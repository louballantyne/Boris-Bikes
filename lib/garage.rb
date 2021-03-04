class Garage
    
    def receive_brokens (broken_bikes)
        @bikes = broken_bikes
    end

    def return_bikes
        fix_bikes
        @bikes
    end

    private 
    def fix_bikes
        @bikes.each { |bike| bike.working = true }
    end
end