#! /usr/bin/ruby                            

class Car

  attr_accessor :name, :brand, :driver

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
    
end


class Passenger
  attr_accessor :name, :age

  def to_s
    "#{name} (#{age} years old)"
  end
  
  def can_drive?
    age > 18
  end
  
end


# CARS
car1 = Car.new()
car1.name = "Astra"
car1.brand = "Opel"
puts "Car definition : #{car1}"

# "#{car1}" est équivalent à la méthode to_s c-a-d : "Brand : #{brand}, Name: #{name}"
 
#PASSENGERS    
p1 = Passenger.new()
p1.name = "Yann"             
p1.age = 19
car1.driver = car1

p2 = Passenger.new()
p2.name = "Nicolas"             
p2.age = 15
car1.driver = p2

puts "The driver is #{car1.driver}"