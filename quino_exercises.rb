
----------------------------------------
#---> Duck-Typing exercise(same methods, different classes)

class Car
	attr_accessor :wheels, :noise
	def initialize wheels, noise
		@noise = noise
		@wheels = wheels
	end

	def make_noise
		puts @noise
	end
end

class Bike
	attr_accessor :wheels, :noise

	def initialize wheels, noise
		@noise = noise
		@wheels = wheels
	end

	def make_noise
		puts @noise
	end
end

class Bus
	attr_accessor :wheels, :noise

	def initialize wheels, noise
		@noise = noise
		@wheels = wheels
	end

	def make_noise
		puts @noise
	end
end


class WheelCounter
	def self.count_wheels vehicles
		vehicles.reduce(0) do |memo, current_vehicle|
			memo + current_vehicle.wheels
		end
	end
end

class SoundPrinter
	def self.make_all_vehicles_make_noise vehicles
		vehicles.each do |vehicle|
			vehicle.make_noise
		end
	end
end

vehicles = [Bike.new(2, "ring ring"), Car.new(4, "piiii"), Bus.new(8, "Get away!")]

number_of_wheels = WheelCounter.count_wheels vehicles				
puts number_of_wheels

SoundPrinter.make_all_vehicles_make_noise(vehicles)




------------------------------------------------------------------------------------------









