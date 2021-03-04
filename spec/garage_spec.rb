require 'garage'
describe Garage do

    it {is_expected.to respond_to(:receive_brokens).with(1).argument}
end