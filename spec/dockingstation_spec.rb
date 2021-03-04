require 'dockingstation'


# describe DockingStation do
#	it 'is of class DockingStation' do
#		expect(subject).to be_instance_of DockingStation
#	end
# end

describe Bike do
alias_method :bike, :subject

	it 'is of class Bike' do
	  expect(bike).to be_instance_of Bike
	end
	it 'working?' do
  	  expect(bike).to be_working
    end
end


describe DockingStation do
	alias_method :dock, :subject
  	
	describe 'it returns a bike' do
		it 'docks a bike' do
			expect(dock).to respond_to(:return_bike).with(1).argument
		end
		it 'raises an error if the dock contains a bike and somebody tries to dock a bike' do
			DockingStation::DEFAULT_CAPACITY.times {dock.return_bike(Bike.new)}
			expect {dock.return_bike(Bike.new)}.to raise_error "Docking Station full"
		end
	end

	
	describe 'release bike' do
		it {  expect(dock).to respond_to :release_bike }
		it 'raises an error if the dock is empty' do
			expect {dock.release_bike}.to raise_error "No bike"
		end
		it 'releases a bike if the docking station is not empty' do
			bike = Bike.new
			dock.return_bike(bike)
		expect(dock.release_bike).to eq bike
	  	end
	end

	describe 'capacity' do
		it 'accept argument when initiate instance' do
			expect(DockingStation).to respond_to(:new).with(1).argument
		end

		it 'test capacity' do
			new_dock = DockingStation.new(10)
			10.times { new_dock.return_bike(Bike.new) }
			expect {new_dock.return_bike(Bike.new)}.to raise_error "Docking Station full"
		end
	end

end

