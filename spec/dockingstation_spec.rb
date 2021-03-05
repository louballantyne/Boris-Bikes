require 'dockingstation'

describe DockingStation do
	# creates an instance of the class for the purpose of testing
	alias_method :dock, :subject


	describe 'it allows the user to return (dock) a bike' do
		it 'docks the bike object the user passes to the method' do
			expect(dock).to respond_to(:return_bike).with(1).argument
		end
		it 'raises an error if the dock contains a bike and somebody tries to dock a bike' do
			DockingStation::DEFAULT_CAPACITY.times {dock.return_bike(double(:bike))}
			expect {dock.return_bike(Bike.new)}.to raise_error "Docking Station full"
		end
	end


	describe 'release bike' do
		# the dock object responds to release_bike
		it {  expect(dock).to respond_to :release_bike }
		# if the dock is empty, it raises an error because there are no
		# bikes to release
		it 'raises an error if the dock is empty' do
			expect {dock.release_bike}.to raise_error "No bike"
		end

		# create a bike double for test purposes
		let(:bike) {double :bike}

		it 'releases a bike if the docking station is not empty' do
			# the bike double is working so the dock can release it
			allow(bike).to receive(:working?).and_return(true)
			dock.return_bike(bike)
			expect(dock.release_bike).to eq bike
	  	end
		it "won't release a broken bike" do
			# the bike double is not working so the dock shouldn't release it
			allow(bike).to receive(:working?).and_return(false)
			dock.return_bike(bike)
			expect{dock.release_bike}.to raise_error "No working bikes"
		end
	end

  # tests that the user can set the capacity of the dock
	describe 'capacity' do
		it 'accepts an argument for capacity when initiating instance' do
			expect(DockingStation).to respond_to(:new).with(1).argument
		end

		# tests that the user can't dock more bikes than the user-set capacity
		it 'won\'t dock more bikes than the set capacity' do
			new_dock = DockingStation.new(10)
			10.times { new_dock.return_bike(double(:bike)) }
			expect {new_dock.return_bike(double(:bike))}.to raise_error "Docking Station full"
		end
	end

end
