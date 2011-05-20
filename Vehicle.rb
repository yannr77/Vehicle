#! /usr/bin/ruby                            

class Car

  attr_accessor :name, :brand
  
  def to_s
    "Brand : #{brand}, Name: #{name}"
  end
  
end


class Passenger

end


# CARS
car1 = Car.new()
car1.name = "Astra"
car1.brand = "Opel"
puts "Car definition : #{car1}"
# "#{car1}" est équivalent à la méthode to_s c-a-d : "Brand : #{brand}, Name: #{name}"
                  
