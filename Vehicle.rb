#! /usr/bin/ruby                            

class Car

  attr_accessor :name, :brand, :driver, :count_passengers

  def to_s
    "Brand : #{brand}, Name: #{name}. "
  end
  
  def driver=(new_driver)
    if new_driver.can_drive? 
      @driver = new_driver 
    else
      puts "#{new_driver} is too young."
    end
  end
  
  def count_passengers_car(thenumber)
    if thenumber.count_passengers?
      puts"The number of passengers is correct"
    else
      puts"You are too many !"
    end
  end 
  
end


class Passenger
  attr_accessor :name, :age

  def count_passengers?
  passenger.count < 5 
  end

  def to_s
    "#{name} (#{age} years old) "
  end
  
  def can_drive?
    age > 18
  end
  
end


# CARS
car1 = Car.new()
car1.name = "Astra"
car1.brand = "Opel"
car1.count_passengers = []
puts "Car1 definition : #{car1}"
# "#{car1}" est équivalent à la méthode to_s c-a-d : "Brand : #{brand}, Name: #{name}"
 
car2 = Car.new()
car2.name = "A5"
car2.brand = "Audi"
car2.count_passengers = 6
puts "Car2 definition : #{car2}"
 
#PASSENGERS    
p1 = Passenger.new()
p1.name = "Yann"             
p1.age = 19

p2 = Passenger.new()
p2.name = "Nicolas"             
p2.age = 15


car1.driver = p1
car2.driver = p2
puts "The car1's driver is #{car1.driver}"
puts "The car2's driver is #{car2.driver}."

car1.count_passengers  = [car1.driver, p2]

puts "CAR 1 : The number of passagers is: #{car1.count_passengers.size}. They are: #{car1.count_passengers}"