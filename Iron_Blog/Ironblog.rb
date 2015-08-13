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

			if post.sponsored == 1 
				puts "+++++++" + post.title + "+++++++" 
				puts "***********"
				puts post.text
				puts "-----------"
			else
				puts post.title 
				puts "***********"
				puts post.text
				puts "-----------"
			end
		end
	end

	def publish_front_page 
		
	end

	def sort_post
		@posts = @posts.sort_by {|a,z| a <=> z}.reverse  #---> date parameter of Post class
	end
end

class Post
	attr_accessor :title, :date, :text, :sponsored
	def initialize title, date, text, sponsored
		@title = title
		@date = date
		@text = text
		@sponsored = sponsored
	end
end



blog = Blog.new 

first_post = Post.new "Hello Post", 2014, "Hello", 0
second_post = Post.new "Name Post", 2013, "My name is Ander", 1
third_post = Post.new "Ruby Post", 2015, "I am starting to love Ruby", 0
fourth_post = Post.new "Hello Post", 2014, "Hello", 0
fifth_post = Post.new "Name Post", 2013, "My name is Ander", 1
sixth_post = Post.new "Ruby Post", 2015, "I am starting to love Ruby", 0
seventh_post = Post.new "Hello Post", 2014, "Hello", 0
eight_post = Post.new "Name Post", 2013, "My name is Ander", 1

blog.add_post first_post
blog.add_post second_post
blog.add_post third_post


blog.create_front_page




