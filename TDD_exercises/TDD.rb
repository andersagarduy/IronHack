class Calculator
	def add(string_numbers)
		#return 1 if string_numbers == " "
		string_numbers.split(/\D/).inject(0) { |acc, number| acc + number.to_i } 
	end
end



