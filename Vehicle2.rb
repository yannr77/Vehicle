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
  
  
  def to_s
    "Name: #{name}, Brand: #{brand}"
  end
  
  def driver=(new_driver)
    if new_driver.can_drive?
      @driver = new_driver 
    else
      puts "car1 driver is too young!"
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

  def can_drive?
    @age > 18
  end

  def to_s
    "Name: #{name}, Age: #{age}"
  end
end


p1 = People.new()
p1.name = "Yann"
p1.age = 17


p2 = People.new()
p2.name = "Nicolas"
p2.age = 22

car1 = Car.new()
car1.name = "Astra"
car1.brand = "Opel"
car1.driver = p2

puts "Definition of car1: #{car1}"
puts "Definition of p1: #{p1}"
puts "Definition of p2: #{p2}"