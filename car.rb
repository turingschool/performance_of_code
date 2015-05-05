# =============== Using Ruby Profiler =================
# Docs: http://ruby-doc.org/stdlib-2.0.0/libdoc/profiler/rdoc/Profiler__.html

# =============== Using Ruby-Prof Gem =================
# Docs: https://github.com/ruby-prof/ruby-prof

# =============== Car example ================

class Car
  attr_reader :gas_tank, :speed
  def initialize
    @gas_tank = 10.0
    @speed = 0.0
  end

  def drive(speed, time)
    gallons = calculate_gallons(speed, time)
    if enough_gas?(gallons)
      use_gasoline(gallons)
      increase_speed_to(speed)
      # puts "Your speed is now #{speed} and you have #{@gas_tank} gallons left."
    else
      # puts "You don't have enough gas!"
    end
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
car.drive(40, 10)              # instruction 1
car.increase_speed_to(50)      # instruction 2
car.enough_gas?(5)             # instruction 3
