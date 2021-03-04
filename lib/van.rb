
class Van
    def take_broken(dock, garage)
        # pick broken bike from dock
        brokens = dock.release_broken_bikes        
        # release bike to garage
        garage.receive_brokens(brokens)
    end

    def collect_fixed(garage, dock)
        fixed = garage.return_bikes

        # delivery to dock
        dock.receive_fixed_bikes(fixed)
    end

end