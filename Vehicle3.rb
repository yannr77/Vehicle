#! /usr/bin/ruby

class Car

  def name
    @name
  end
  def brand
    @brand
  end
  def name=(value)
    @name = value
  end
  def brand=(value)
    @brand = value
  end

  def to_s
    "Name: #{name} Brand: #{brand}"
  end 

  def driver
    @driver
  end
  
  def driver=(new_driver)
    if new_driver.can_drive_allone?
      @driver = new_driver
    else
      puts "People is too younger"
    end
  end
  
end


class People
  
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
  
  def can_drive_allone?
    @age > 18
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

puts "Car's definition: #{car1}"
