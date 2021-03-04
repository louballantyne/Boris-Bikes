require 'bike'

describe Bike do
  alias_method :bike, :subject
  it 'responds to working?' do
    expect(Bike.new).to respond_to :working?
  end
  it 'is of class Bike' do
    expect(bike).to be_instance_of Bike
  end
  it 'working?' do
     expect(bike).to be_working
  end
  it 'flags a bike as broken if it is reported' do
    expect(bike).to respond_to(:broken?)
  end
  
end
