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
    it 'gets a bike' do
      expect(DockingStation.new.release_bike).to be_a(Bike)
      expect(Bike.new.working?).to eq true
    end
end

describe Bike do

  it { is_expected.to respond_to(:working?) }
end
