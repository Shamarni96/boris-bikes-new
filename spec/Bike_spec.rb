require 'DockingStation'

describe "bike" do
  it "responds to working?" do
    expect(Bikes.new).to respond_to(:working?)
  end
end
