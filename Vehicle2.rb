#! /usr/bin/ruby

class Car
  attr_accessor :name, :brand, :driver
  
  
  def to_s
  end
  
  
end


class People
attr_accessor :name, :age

end

p1 = People.new()
p1.name = "Yann"
p1.age = 19

car1 = Car.new()
car1.name = "Astra"
car1.brand = "Opel"
car1.driver = p1

puts "Le conducteur de car1 est: #{car1.driver.name}"