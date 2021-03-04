require 'van'

describe Van do
    it {is_expected.to respond_to(:take_broken)}
    it {is_expected.to respond_to(:collect_fixed)}
end