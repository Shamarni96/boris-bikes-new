class DockingStation
  attr_reader :bike
  def initialize(default_capacity = 20)
    @bikes = []
    @capacity = default_capacity
  end

  def release_bike
    if @bikes.empty?
      raise "There are no bikes"
    else
      return @bikes.pop
    end
  end

  def dock(bike)
    if @bikes.length < @capacity
      p "hello line 18"
      @bikes << bike
    else
      p "hello line 21"
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



=begin
class DockingStation
  attr_reader :bike
   def initialize
     @bike = nil
   end

   def release_bike
     if @bike != nil
       return @bike
     else
       raise "There are no bikes in the docking station"
     end
  end

  def docking(bike)
    if @bike == nil
      @bike = bike
    else
      raise "the dock is full"
    end
  end

end

class Bikes
  def working?
    working = true
  end
end
=end
