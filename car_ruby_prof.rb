require 'ruby-prof'

# =============== Using Ruby Profiler =================
# Docs: http://ruby-doc.org/stdlib-2.0.0/libdoc/profiler/rdoc/Profiler__.html
#
# Try profiling this file using:
# ruby -rprofile car.rb

# =============== Using Ruby-Prof Gem =================
# Docs: https://github.com/ruby-prof/ruby-prof

# =============== Car example ================

class Car
  TANK_SIZE = 10.0
  attr_reader :gas_tank, :speed
  def initialize
    @gas_tank = TANK_SIZE
    @speed = 0.0
  end

  def drive(speed, time)
    gallons = calculate_gallons(speed, time)
    if enough_gas?(gallons)
      use_gasoline(gallons)
      increase_speed_to(speed)
      puts "Your speed is now #{speed} and you have #{gas_tank} gallons left."
    else
      puts "Ran out of gas; filling tank"
    end
  end

  def fuel_up
    deficit = TANK_SIZE - gas_tank
    @gas_tank += deficit
  end

  def use_gasoline(gallons)
    @gas_tank -= gallons.to_f
  end

  def increase_speed_to(speed)
    speed = speed
  end

  def enough_gas?(gallons)
    (gas_tank - gallons.to_f) > 0 ? true : false
  end

  def calculate_gallons(speed, time)
    (speed / 10.0) * (time / 20.0)
  end
end


car = Car.new
1000.times do
  car.drive(rand(40), rand(30))
  car.increase_speed_to(rand(60))
  car.enough_gas?(5)
end
