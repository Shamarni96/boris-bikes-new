class DockingStation
   def initialize
     @num_of_bikes = 4
   end

   def release_bike(num)
    @num_of_bikes -= num
    return bike = Bikes.new
   end
end

class Bikes
  def working?
  end
end

=begin
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
=end
