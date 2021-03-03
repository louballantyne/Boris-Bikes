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
  it 'releases a bike' do
    expect(dock.release_bike).to be_instance_of Bike
  end
	it 'docks a bike' do
		expect(dock).to respond_to(:return_bike).with(1).argument
	end
end
