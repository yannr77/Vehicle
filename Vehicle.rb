#! /usr/bin/ruby                            

class Car
    
  attr_accessor :name, :brand, :driver, :passengers

  def initialize
    @passengers = []
  end

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
    
  def add_passenger(passenger)
    @passengers << passenger
  end
  
end


class Passenger
  attr_accessor :name, :age


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
puts "Car1 definition : #{car1}"
# "#{car1}" est équivalent à la méthode to_s c-a-d : "Brand : #{brand}, Name: #{name}"
 
#car2 = Car.new()
#car2.name = "A5"
#car2.brand = "Audi"
#car2.count_passengers = 6
#puts "Car2 definition : #{car2}"
 
#PASSENGERS    
p1 = Passenger.new()
p1.name = "Yann"             
p1.age = 19

p2 = Passenger.new()
p2.name = "Nicolas"             
p2.age = 15


car1.driver = p1
#car2.driver = p2
puts "The car1's driver is #{car1.driver}"
#puts "The car2's driver is #{car2.driver}."

car1.add_passenger(p1)
car1.add_passenger(p2)

#verifier qu'il n'y pas de pasager
puts "No passenger" if car1.passengers.count == 0
   
# verifier qu'il y a 1 passager et que c'est p1
puts "There is a passenger" if car1.passengers.count == 1
puts "#{p2.name} is in the car" if car1.passengers.include?(p2)    

#Afficher tous les passagers de car1    
puts "Passengers : #{car1.passengers}"
