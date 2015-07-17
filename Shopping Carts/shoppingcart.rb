class ShoppingCart 
	attr_accessor :total_price, :items
	def initialize()
		@total_price = 0.0
		@items = []
	end

	def discount
		if @items.size >= 5
			
			percentage = (@total_price*10)/100
			@total_price = @total_price - percentage
			puts "!You have 10% discount in this purchase!"
		                            #Discount of the total amount of the cart
		end
	end

	def add_product(product)
		#product.discount_fruit
		@items.push(product)
		@total_price = product.price + @total_price
	end
end	

class Item
	attr_accessor :name, :price
	def initialize(name, price)
		@name = name
		@price = price
	end

	def discount_fruit
		if Date.today.saturday? || Date.today.sunday? && banana || orange_juice
			percentage = (product.price*10)/100
			discounted_price = product.price - percentage
			product.price = discounted_price
		end
	end

	def discount_houseware
		if vaccum_cleaner.price < 100
			vaccum_cleaner
			else 
				percentage = (vaccum_cleaner*5)/100
				vaccum_cleaner.price = vaccum_cleaner.price - percentage
		end
	end
end

class Banana < Item
end

class OrangeJuice < Item
end

class Rice < Item
end

class VaccumCleaner < Item
end

class Anchovies < Item
end

banana = Banana.new  "Banana", 10
orange_juice = OrangeJuice.new "Orange Juice", 10
rice = Rice.new "Rice", 1
vaccum_cleaner = VaccumCleaner.new "Vaccum Cleaner", 150
anchovies = Anchovies.new "Anchovies", 2



shopping = ShoppingCart.new

shopping.add_product banana


shopping.discount



puts shopping.total_price










#interactivity

=begin


puts "What items do you want to add?"
puts "We have #{@name} this list of products in the market"
puts "Type the product and hit enter:"

products_listed = gets.chomp

shopping.add_product products_listed

puts "Do you want to add more products to the cart?"
answer = gets.chomp


while answer = "yes" || "y"
	puts "What items do you want to add?"
	puts "We have #{@name} this list of products in the market"
	puts "Type the product and hit enter:"
	
	products_listed = gets.chomp

	puts "Do you want to add more products to the cart?"
	answer = gets.chomp
end

puts "The total price of the cart is:"


=end








