require 'DockingStation'

#RSpec.describe DockingStation do
#  describe "#new" do
#      it "creates a new docking station"
#      expect (DockingStation.new(0)).to eq docking_station
#    end

describe "#DockingStation" do

  describe "#release_bike" do
    docking_station = DockingStation.new()
    it "removed one bike from the docking station" do
      expect(docking_station.release_bike(1)).to eq 3
      end
      #it "makes a bike variable" do
      #expect(docking_station.release_bike(1)).to
      end
    end

=begin
require 'DockingStation'

RSpec.describe DockingStation do

  it { should respond_to(:dock)}

  subject{DockingStation.new}

  describe "release_bike" do
    it "Returns a new bike" do
      subject.dock(Bike.new)
      expect(subject.release_bike.working?).to eq true
    end

    it "Returns an error if there are no working bikes" do
      expect{subject.release_bike}.to raise_error("There are no bikes")
    end
  end

  describe "dock" do
    it "Won't dock a bike if docking station full" do
      subject.dock(Bike.new)
      expect{subject.dock(Bike.new)}.to raise_error("Docking Station Full")
    end
  end
end
=end
