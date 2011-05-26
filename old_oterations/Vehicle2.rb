#! /usr/bin/ruby

class Car
  # attr_accessor :name, :brand, :driver
  def name
    @name

  end
  def name=(value)
    @name = value
  end
  def brand
    @brand
  end
  def brand=(value)
    @brand = value
  end
  def driver
    @driver
  end
  def driver= (value)
    @driver = value
  end
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
    "Name: #{name}, Brand: #{brand}, Passengers :#{passengers.count}"
  end
  
  def accepts_young_driver?(new_driver)
    new_driver.can_drive_followed? && self.accepts_a_young_driver?
  end
  
  def driver=(new_driver)
    if new_driver.can_drive_alone? or (self.accepts_young_driver?(new_driver))
      puts "Driver: #{new_driver} added"
      @driver = new_driver
      if @passengers.include?(new_driver)
        puts "#{new_driver} is already passager"
        @passengers.delete(new_driver)
        puts "#{new_driver} deleted"
        @driver = new_driver
        puts "#{new_driver} added to drive"
      else
        @driver = new_driver
        puts "#{new_driver} added to drive."
      end
    else
      puts "car1 driver is too young!"
    end
  end
  
  def add_passenger(new_passenger)
    if @passengers.include?(new_passenger) or @driver == new_passenger
      puts "#{new_passenger} is already in car"
    else
      if @passengers.count < 5
        puts "Passenger: #{new_passenger} added"
        @passengers << new_passenger
      else
        puts "The car is full"
      end
    end
  end

  def delete_passenger(supp_passenger)
    if @passengers.include?(supp_passenger)
      @passengers.delete(supp_passenger)
      puts "#{supp_passenger} deleted"
    else
      puts "#{supp_passenger} isn't a car's passenger."
    end
  end

  def passengers_list
    @passengers.join("/")
  end

  def accepts_a_young_driver?
    @passengers.each do |passenger|
      return true if passenger.age > 22
    end
  end
end

class People
  # attr_accessor :name, :age
  def name
    @name
  end
  def name=(value)
    @name = value
  end
  def age
    @age
  end
  def age=(value)
    @age = value
  end

  def can_drive_alone?
    @age > 18
  end

  def can_drive_followed?
    @age < 18 && @age > 16
  end

  def to_s
    "Name: #{name}, Age: #{age}"
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
car1 = Car.new()
car1.name = "Astra"
car1.brand = "Opel"



car1.driver = p1
car1.add_passenger(p1)
car1.add_passenger(p3)
car1.add_passenger(p4)
car1.add_passenger(p5)

car1.driver = p2

puts "-----------"
puts "Definition of car1 => #{car1}"
puts "Passengers : #{car1.passengers_list}"
puts "Driver : #{car1.driver}"

