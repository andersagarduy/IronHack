# This is a comment
puts "Hello, world!"
puts "I"
puts "like"
puts "pie."

print "Cookies"
print "are"	
print "good"
puts "too."
# comment this

operation_result = 12 * 34
puts "Operation result is"
puts operation_result

a_string = "This is a String"
another_string = 'This is also a String'
multiline_string = """
A long time ago in a galaxy far, far away...

It is a period of civil war. Rebel
spaceships, striking from a hidden
base, have won their first victory
against the evil Galactic Empire.
"""

puts "Please, type your number:"
name = gets.chomp.to_i
puts "Hello, #{name}."


file_contents = IO.read("my_text_file.txt")
puts "The source file contains: #{file_contents}"

puts "What's your name?"
name = gets.chomp
IO.write('name.txt', name)






