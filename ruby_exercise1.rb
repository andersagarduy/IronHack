puts "Type what you want for the txt file:"
filetext = gets.chomp
IO.write('my_file.txt', filetext) 

puts "What is the source file?"
sourcefile = gets.chomp

puts "What is the destination file?"
targetfile = gets.chomp
IO.write('target.txt', filetext)


