#! /usr/bin/ruby

class Car
  attr_accessor :name, :brand, :driver
  
  
  def to_s
    "Name: #{name}, Brand: #{brand}, Driver: #{driver}"
  end
  
  def driver=(new_driver)
    @driver = new_driver if new_driver.can_drive?
  end
  
  
end


class People
attr_accessor :name, :age

  def can_drive?
    age > 18
  end

  def to_s
    "Name: #{name}, Age: #{age}"
  end
end

p1 = People.new()
p1.name = "Yann"
p1.age = 19
puts "Definition of p1: #{p1}"

car1 = Car.new()
car1.name = "Astra"
car1.brand = "Opel"
car1.driver = p1
puts "Definition of car1: #{car1}"