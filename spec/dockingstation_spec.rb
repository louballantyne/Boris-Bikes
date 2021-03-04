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

  	it {  expect(dock).to respond_to :release_bike }
	it 'raises an error if the dock is empty' do
		expect {dock.release_bike}.to raise_error "No bike"
	end
  
	it 'docks a bike' do
		expect(dock).to respond_to(:return_bike).with(1).argument
	end
	describe 'release bike' do
		it 'releases a bike if the docking station is empty' do
			bike = Bike.new
			dock.return_bike(bike)
		expect(dock.release_bike).to eq bike
	  	end
		it 'raises an error if the dock contains a bike and somebody tries to dock a bike' do
			bike = Bike.new
			dock.return_bike(bike)
			bike2 = Bike.new
			expect {dock.return_bike(bike2)}.to raise_error "Docking Station full"
		end
	end
end

