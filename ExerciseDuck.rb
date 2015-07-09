class Car 
	attr_accessor :wheels, :noise
	def initialize wheels, noise
		@wheels = wheels
		@noise = noise
	end

	def make_noise
		@noise
	end
end

class Truck
	attr_accessor :wheels, :noise
	def initialize wheels, noise
		@wheels = wheels
		@noise = noise
	end

	def make_noise
		@noise
	end
end

class Counter
	def initialize
		@total_wheels = 0
	end

	def count
		@vehicles = []

		vehicles.each do |vehicle|
			@total_wheels += vehicle.wheels 
		end	
	end

	def add_vehicle vehicle
		@vehicles <<  vehicle
	end
end

class printer

end




class WheelCounter
	def self.counter vehicles
	vehicles.reduce(0) do |memo, current_vehicle|
		vehicles 
		end	
	end
end	


vehicles = [Car.new(4, "BRooom"), Truck.new(8, "GRRoooong")]


total_wheels = WheelCounter.counter vehicles

