def solve_cipher(input)
  #your code goes here
  input.split('')
  	input.each do |input|
  	input.ord
	end

end

solve_cipher("ifmmp")
# should return "hello"
