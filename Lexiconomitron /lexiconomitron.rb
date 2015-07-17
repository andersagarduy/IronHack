class Lexiconomitron
	def eat_t string
		string.delete("t")
	end

	def shazam array
		array.each do |string|
			string.reverse!
		end
	end

	def oompa_loompa array
		array.select { |string|  string.length <= 3 }	
	end
end


