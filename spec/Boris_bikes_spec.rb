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
      subject.bike_count = 1
      expect(subject.release_bike).to be_a(Bike)
      expect(Bike.new.working?).to eq true
    end
    it 'release a bike' do
      expect(Bike.new.docked).to eq false
    end
    it 'docks a bike' do
      bike = Bike.new
      DockingStation.new.dock_bike(bike)
      expect(bike.docked).to eq true
    end
    it 'release_bike returns error' do
      expect{subject.release_bike}.to raise_error(RuntimeError, "No bikes available")
    end
    it 'dock_bike returns error' do
      subject.bike_count = 1
      expect{subject.dock_bike(Bike.new)}.to raise_error
    end
end

describe Bike do
  it { is_expected.to respond_to(:working?) }
end
