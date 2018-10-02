require 'boris_bikes'
=begin
describe DockingStation do
  it 'docking station instances to respond to the method release_bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
end
=end

describe DockingStation do
    subject { DockingStation.new }
    it {should respond_to(:release_bike)}
end

describe Bike do
  subject { Bike.new }
  it { should respond_to(:working?) }
end
