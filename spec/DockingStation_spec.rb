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
