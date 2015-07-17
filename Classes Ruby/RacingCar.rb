class Car 
	attr_accessor :sound
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
	def initialize 
		super "BROOOM"
	end
end


#car = Car.new "BROM"
#second_car = Car.new "BROOM"
#third_car = Car.new "BROOOM"


sounds = ["Broom", "Meek", "Nyan"] 

my_new_cars = sounds.map do |sound|
	Car.new sound 
end


my_new_cars.each do |car|
	car.make_noise   # --->????
end



#my_new_cars.reduce("") {|noises, car| noises + car.sound} 

























