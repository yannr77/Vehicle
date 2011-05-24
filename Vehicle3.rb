#! /usr/bin/ruby

class Vehicle
end





class Moto
attr_accessor :name, :brand, :driver, :passenger

  def to_s
  "Name: #{name}, Brand: #{brand}."
  end
  
  def driver=(new_driver)   
    if @passenger == new_driver
      puts "#{new_driver} is already a passenger."
      @passenger = nil
      puts "#{@passenger} deleted."
      @driver = new_driver
      puts "#{new_driver} added to drive."
    else
      @driver = new_driver
      puts "#{new_driver} added to drive."
    end
  end
  
  def add_passenger(new_passenger)
    if @driver != new_passenger
      @passenger = new_passenger
      puts "Passenger added : #{new_passenger}."
    else
      puts "#{new_passenger} is already a driver."
    end
  end
end


class Car < Vehicle
attr_accessor :name, :brand, :driver, :passengers
  
  def to_s
    s = []
    s << "Name: #{name}" if name != nil
    s << "Brand: #{brand}" if brand != nil
    s << "Passengers: #{@passengers.count}" if passengers.count > 0
    s.join(", ")
  end 
  
  def accepts_a_young_driver?
    @passengers.each do |passenger|
      return true if passenger.age > 22
    end
  end

  def accepts_young_driver?(new_driver)
     new_driver.can_drive_followed? && self.accepts_a_young_driver?
  end
  
  def driver=(new_driver)
    if new_driver.can_drive_allone? or  (self.accepts_young_driver?(new_driver))
      @passengers.delete(new_driver) if @passengers.include?(new_driver)
      @driver = new_driver
      puts "The car's driver is #{@driver.name}"
    else
      puts "People is too younger"
    end
  end
  
  def initialize
    @passengers = []
  end
  
  def add_passenger(new_passenger)
    if @passengers.count < 5 
      if @passengers.include?(new_passenger) or @driver == new_passenger
        puts "#{new_passenger.name} is already in car"
      else
       puts "#{new_passenger.name} added (car)"
       @passengers << new_passenger
      end
    else 
      puts "The car is full"  
    end
  end
  
  def delete_passenger(supp_passenger)
    @passengers.delete(supp_passenger)
    puts "#{supp_passenger} deleted (car)" 
  end
    
  def passengers_list
    @passengers.join(" ,")
  end
  
end

class People
  attr_accessor :name, :age
  
  def enter_car(car)
      if car.passengers.count < 5 
        if car.passengers.include?(self) or car.driver == self
          puts "#{self.name} is already in car"
        else
         puts "#{self.name} added (car2)"
         car.passengers << self
        end
      else 
        puts "The car is full"  
      end
  end

  def to_s
    "Name => #{name}, Age => #{age}"
  end
  
  def can_drive_allone?
    @age > 18
  end
  
  def can_drive_followed?
    @age < 18 && @age > 16
  end
end


p1 = People.new()
p1.name = "Yann"
p1.age = 19
p2 = People.new()
p2.name = "Nicolas"
p2.age = 17
p3 = People.new()
p3.name = "Véronique"
p3.age = 48
p4 = People.new()
p4.name = "Roland"
p4.age = 51
p5 = People.new()
p5.name = "Coline"
p5.age = 14
p6 = People.new()
p6.name = "Intru"
p6.age = 200

#==============MOTO
moto1 = Moto.new()
moto1.name = "Z750"
moto1.brand = "Suzuki"
moto1.driver = p4
moto1.add_passenger(p5)
puts "The moto's driver is #{moto1.driver.name}"
puts "The moto's passenger is #{moto1.passenger.name}" if moto1.passenger != nil 
puts "Moto definition: #{moto1}"
puts "========="

#==============CAR
car1 = Car.new()
car1.name = "Astra"
car1.brand = "Opel"
car1.driver = p2
car1.add_passenger(p2)
p6.enter_car(car1)
car1.add_passenger(p3)
car1.add_passenger(p4)
puts "Car's definition: #{car1}"
puts "The car's passengers are : #{car1.passengers_list}"

