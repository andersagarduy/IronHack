class WordSorting
    def initialize()  
    
    end

    def sort_string()
    puts "Write the string you want to order alphabetically:"
    string_name = gets.chomp.split(' ') #change the sort method.
    string_name.sort
    string_name.sort { |a,z| a.upcase <=> z.upcase }
    end   
end


sort = WordSorting.new
sort.sort_string 