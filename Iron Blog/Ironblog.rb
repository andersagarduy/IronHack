class Blog
	def initialize 
		@posts = []
	end
	
	def post_container
		@posts 
	end
	
	def add_post new_post
		@posts << new_post
	end
	
	def create_front_page
		sort_post
		@posts.each do |post|
		    puts post.title
			puts "***********"
			puts post.text
			puts "-----------"
		end
	end

	def publish_front_page 
		
	end

	def sort_post
		@posts = @posts.sort_by {|a,z| a <=> z}.reverse  #---> date parameter of Post class
	end
end

class Post
	attr_accessor :title, :date, :text
	def initialize title, date, text
		@title = title
		@date = date
		@text = text
	end
end



blog = Blog.new 

first_post = Post.new "First Post", 2014, "Hello"
second_post = Post.new "Second Post", 2013, "My name is Ander"
third_post = Post.new "Third Post", 2015, "I am starting to love Ruby"
blog.add_post first_post
blog.add_post second_post
blog.add_post third_post


blog.create_front_page




