require 'bike'

describe Bike do
  alias_method :bike, :subject
  it 'responds to working' do
    expect(Bike.new).to respond_to :working
  end
  it 'is of class Bike' do
    expect(bike).to be_instance_of Bike
  end
  it 'working?' do
     expect(bike).to be_working
  end

  
end
