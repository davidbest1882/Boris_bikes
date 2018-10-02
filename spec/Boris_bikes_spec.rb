require 'boris_bikes'
=begin
describe DockingStation do
  it 'docking station instances to respond to the method release_bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
end
=end

describe DockingStation do
    it {is_expected.to respond_to(:release_bike)}

end

describe Bike do

  it { is_expected.to respond_to(:working?) }
end
