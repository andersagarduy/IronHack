class CommandLine 
	def initialize 
		@user = ""
		@password = ""
		@text = ""
		@menu_election = 0
	end

	def get_user
		puts "Type the Username you want to have:"
		@user = gets.chomp
	end

	def get_password
		puts "Type the password you want to have:"
		@password = gets.chomp
	end

	def is_user_correct?
		@user == "Ander" && @password == "sonrisas"
	end

	def check_status
		if is_user_correct?
			puts "Please enter a text"
			@text = gets.chomp
			menu
		else
			puts "ERROR, type again your user and password"
			get_user
			get_password
	end

	def menu
		puts "Choose what do you want to do:"
		puts "Type 1 for count the words of your text"
		puts "Type 2 for count the letters of your text"
		puts "Type 3 for reverse your text"
		puts "Type 4 to uppercase your text"
		puts "Type 5 to lowercase your text"
		@menu_election = gets.chomp

	when @menu_election
		case "1"
			 puts "Your text have #{word_counter} words"
		case "2"
			puts "Your text have #{letter_counter} letters"
		case "3"
			puts "Your text reversed is --> #{text_reverse}"
		case "4"
			puts "Your text in uppercase is --> #{text_to_uppercase}"
		case "5"
			puts "Your text in lowercase is --> #{text_to_lowercase}"
	end

	end

	def word_counter
		@text.split(' ')
	end

	def letter_counter
		@text.char	
	end

	def text_reverse
		@text.reverse	
	end

	def text_to_uppercase
		@text.uppercase
	end

	def text_to_lowercase
		@text.lowercase
	end

end


new_exercise = CommandLine.new
new_exercise.get_user
new_exercise.get_password










