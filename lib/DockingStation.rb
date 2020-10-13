class DockingStation
  attr_reader :bike
  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
      raise "There are no bikes"
    else
      return @bikes.pop
    end
  end

  def dock(bike)
    if @bikes.empty?
      @bikes << bike
    else
      raise "Docking Station Full"
    end
  end
end

class Bike
  def initialize
    @working = true
  end

  def working?
    return @working
  end
end