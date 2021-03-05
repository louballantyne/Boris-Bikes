
class Van
    def take_broken_bikes(dock, garage)
        # pick up broken bikes from dock
        broken_bikes = dock.release_broken_bikes
        # release bike to garage
        garage.receive_broken_bikes(broken_bikes)
    end

    def collect_fixed(garage, dock)
        # creates a variable containing fixed bikes, collected from the garage.
        fixed = garage.return_bikes
        # deliver fixed bikes to dock
        dock.receive_fixed_bikes(fixed)
        # clear the Array
        fixed-=fixed
    end

end
