#! /usr/bin/ruby                            

class Car
  attr_accessor :name, :brand, :driver

  def passengers
    @passengers
  end
  
  def passengers=(value)
    @passengers = value
  end
  
  def initialize
    @passengers = []
  end

  def to_s
    "Brand : #{brand}, Name: #{name}. "
  end
  
  def driver=(new_driver)
    if new_driver.can_drive?
      if @passengers.include?(new_driver)
        puts "The driver is already a passager"
      else      
        @driver = new_driver 
      end
    else      
      puts "#{new_driver} is too young."
    end
  end
    
  def add_passenger(new_passenger)
    if @passengers.count <= 5
      if ((@passengers.include?(new_passenger)) && (driver = new_passenger))
        puts "#{new_passenger} is already in car"
      else
        @passengers << new_passenger 
      end
    end
  end
  
  def delete_passenger(sup_passenger)
    @passengers.delete(sup_passenger)
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

p3 = Passenger.new()
p3.name = "Robert"             
p3.age = 26


# l'ordre du "car1.add_passenger" et du "car1.driver " est important pour lalgo du dessu avec les if
car1.add_passenger(p2)
car1.add_passenger(p3)
car1.driver = p1
car1.delete_passenger(p2)

puts "------------"

puts "Car1 definition : #{car1}"
# "#{car1}" est équivalent à la méthode to_s c-a-d : "Brand : #{brand}, Name: #{name}"

puts "The car1's driver is #{car1.driver}"
#puts "The car2's driver is #{car2.driver}."

puts "----"

#verifier qu'il n'y pas de passager
puts "No passenger" if car1.passengers.count == 0
   
# verifier qu'il y a le passager p1
puts "#{p2.name} is in the car" if car1.passengers.include?(p2)    

#Afficher tous les passagers de car1    
if car1.passengers.count == 1
  puts "Passenger : #{car1.passengers}"
else
  puts "Passengers : #{car1.passengers}"
end

puts "------------"