class Car 
	def initialize sound
		@sound = sound
	end
	def make_noise
		puts @sound
	end
	def self.make_noise_twice car
	    2.times {car.make_noise}
	end
end

class RacingCar < Car
	attr_accessor :racing_sound
	def initialize racing_sound
		super (sound)
		@racing_sound = racing_sound
	end
	def make_noise
		@racing_sound
	end
end


car = RacingCar.new "BROOOOM"
car.make_noise

#car_3 = Car.new "BRooom"
#Car.make_noise_twice car_3




def my_method
	puts "ruby".concat(" is awesome")

	binding.pry
	letters_array = ("a".."c").to_a
	letters_array.each do |letter|
		binding.pry
		puts letter

	end
end		



require 'pry'
def create_string array
	result = ""
	array.each do |letter|
		binding.pry
		result += letter
	end
	return result
end


str = create_string(["a", "b", "c"])

puts str.reverse



-----------------------------------



require 'pry'
def create_string array
	result = array.join
	return result
end


str = create_string(["a", "b", "c"])

puts str.reverse

-----------------------------------


#A car needs to hold the names of the cities it visits. A car should have a method cities that returns the array of names.


class Car
	def initialize visited_cities
		@visited_cities = visited_cities
	end

	def cities
		@visited_cities
	end

	def add_cities city
		@visited_cities << city
	end
end
 	 

car = Car.new ["Paris", "London", "Madrid"]

#add more cities -->

car.add_cities "Barcelona"
car.add_cities "Bilbao"

car.cities






class Muffin
	def initialize colour, flavour
		@colour = colour
		@flavour = flavour
	end

	def eat
		puts "Yummy"
	end
end

class Cupcake < Muffin
	def initialize colour, flavour, topping
		super (colour, flavour)
		@topping = topping
	end
end	

















