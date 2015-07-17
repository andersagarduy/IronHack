class Car
	def initialize car_sound, engine
		@sound = car_sound
		@engine = engine
	end

	def car_sound
		@sound.concat(@engine.engine_sound)
	end
end

class Engine
attr_accessor :engine_sound
	def initialize engine_sound
		@sound = engine_sound
	end

	def engine_sound
		@sound
	end
end

first_engine = Engine.new "Brooom"
c1 = Car.new "BROOM", first_engine

c1.car_sound