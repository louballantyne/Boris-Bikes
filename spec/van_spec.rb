require 'van'
require 'dockingstation'
require 'bike'

describe Van do
    it {is_expected.to respond_to(:take_broken_bikes).with(2).argument}
    
    ds = DockingStation.new

    it 'pick broken bikes from dock' do
        bike1 = instance_double("bike1", :working? => false)
        bike2 = instance_double("bike2", :working? => true)

        ds.return_bike(bike1)
        ds.return_bike(bike2)

        expect(ds.release_broken_bikes).to eq [bike1]
    end

    it {is_expected.to respond_to(:collect_fixed)}
end
