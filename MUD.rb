class Grid 	#para definir el mapeo
	def initialize room,room_N, room_S,room_W,room_E
		@room = room
		@room_N = room_N
		@room_S = room_S
		@room_E = room_E
		@room_W = room_W
	end
end

		 rooms = ["room", "room_N", "room_S", "room_W", "room_E"]

class Rooms
	attr_accessor :id, :description, :message
	def initialize id, description, message

			#wrong
		@room_array = ["Dark Room", "Laberynth", "Forest", "Disneyland", "Closet"]
		@id = ["Dark Room", "Laberynth", "Forest", "Disneyland", "Closet"]
		@message = ["this is the home of the snowman", "there is a lot of light. There is a bear sleeping", "watch the minotaur", "don´t be shy and step out of the closet", "mind the princess"]
		@description = ["You are in a #{@id}, there is a #{@message}"]
		@input = input

	end
end

class Sequence

	attr_accessor :input_dir
	def initial_sequence
		puts "Welcome to the Game Of Rooms"
		puts "Do you want to start playing?"
		puts ">"
		@input = gets.chomp
		@current_room = initial_room
	end

	def initial_room #random room
		current_room = @room_array.sample
	# 	rooms.select {|room| room.id == current_room}
	end

	def room_specific_messages
		puts "You are in #{current_room}, "
		#aks directions
	end

	def ask_directions
		puts "What direction do you want to take?"
		puts ">"
		@input_dir = gets.chomp
		#logic
	end

	def set_current_room

		# if you were in "Dark Room" and @input_dir = "N" => @current_room = "Laberynth"
		# if you were in "Dark Room" and @input_dir = "S" => message= "NOTHING HERE"
		# if you were in "Dark Room" and  @input_dir = "E", "W" => message = "TRY AGAINA"
		# if you were in "Dark Room" and @input_dir != "N", "S", "E, "W"  => message = "error message"

		if @input_dir == "N"
		 @current_room = current_room(0)
		end
		if  @input_dir == "S"
		@current_room = current_room(1)
		end
		if  @input_dir == "E"
		 @current_room =current_room(2)
		end
		if  @input_dir == "W"
		@current_room = current_room(3)
		end

	end

	def change_room
		set_current_room
		room_specific_messages
		ask_directions
		while @current_room == @current_room do
			ask_directions
			set_current_room
		end
	end

	def game_sequence
		while @input.uppercase != "YES" do
			initial_sequence
		end
		initial_room
		change_room
	end
end

new_grid = Grid.new


darkroom[0]= "Laberynth"
darkroom[1]= ""
darkroom[2]= ""
darkroom[3]= ""

laberynth[0]= "Forest"
laberynth[1]= "Darkroom"
laberynth[2]= ""
laberynth[3]= ""

forest[0]= "Disenyland"
forest[1]= "Laberynth"
forest[2]= ""
forest[3]= ""

disneyland[0]= "Closet"
disneyland[1]= "Forest"
disneyland[2]= ""
disneyland[3]= ""

closet[0]= ""
closet[1]= "Disenyland"
closet[2]= ""
closet[3]= ""


new_rooms = Rooms.new



new_game = Sequence.new
new_game.game_sequence


=begin

	QUESTIONS 1 Linea : 46 As long as @current_room doesn´t change.
	QUESTIONS 2 Linea : 75 #DO WE NEED TO CREATE ROOOMS?
=end





class Rooms 
	attr_accessor :id, :description, :message
	def initialize id, description, message
		@room_array = ["Dark Room", "Laberinth", "Forest", "Disneyland", "Closet"]
		@id = ["Dark Room", "Laberinth", "Forest", "Disneyland", "Closet"]
		@message = ["this is the home of the snowman", "there is a lot of light. There is a bear sleeping", "watch the minotaur", "don´t be shy and step out of the closet", "mind the princess"]
		@description = ["You are in a #{@id}, there is a #{@message}"]
		@input = input
	end
end

class Sequence
	attr_accessor :input_dir 
	def initial_sequence
		puts "Welcome to the Game Of Rooms"
		puts "Do you want to start playing?"
		puts ">"
		@input = gets.chomp
		@current_room = initial_room
	end
	
	def initial_room #random room
		current_room = @room_array.sample
		rooms.select {|room| room.id == current_room}

				#suppose: initial room  is forest 
	end

	def room_specific_messages
		puts "You are in #{current_room}, "
		#aks directions
	end

	def ask_directions
		puts "What direction do you want to take?"
		puts ">"
		@input_dir = gets.chomp
		#logic
	end

	def set_current_room
		# if you were in "Dark Room" and @input_dir = "N" => @current_room = "Laberinth"
		# if you were in "Dark Room" and @input_dir = "S" => message= "NOTHING HERE"
		# if you were in "Dark Room" and  @input_dir = "E", "W" => message = "TRY AGAINA"
		# if you were in "Dark Room" and @input_dir != "N", "S", "E, "W"  => message = "error message"
		# while --> .ask_directions
	end

	def change_room
		set_current_room
		room_specific_messages
		ask_directions
		while @current_room != current_room
			ask_directions
		else 
		end
	end
		set_current_room
	end
	
	def game_sequence
		while @input.uppercase != "YES" do
			initial_sequence
		end
		initial_room
		#change_room
	end
end


room = Rooms.new 
room2 = Rooms.new
room3 = Rooms.new
room.initial_sequence
room.start_game













