require 'pry'
class Shoppingcart
	attr_accessor :total_cost, :cart
	def initialize
		@total_cost = 0.0
		@cart = []
	end


	def actual_deals
		@cart.each do |item|
			binding.pry
			if @amount == 2 && item.class == Apples
			@product.price = 10
			else
			@product.price = 20
			end

			if @amount == 3 && item.class == Oranges
			@product.price = 5
			else
			@product.price = 15	
			end
		end
	end


	def add_product product, amount
		@cart << product
		@total_cost = @total_cost + product.price
		@amount = amount
		@product = product
	end

	def show_total_price_list
		@cart.each.with_index(1) do |item, index|
			price = @amount * item.price
			puts "#{index} #{item.name}: #{price}$"
		end
	end
end

class Item
	attr_accessor :name, :price
	def initialize name, price
		@name = name
		@price = price
	end
end

class Apples < Item
end

class Oranges < Item
end

class Grapes < Item
end

class Banana < Item
end

class Watermelon < Item
end




apple = Apples.new "Apple", 10
orange = Oranges.new "Orange", 5
grape = Grapes.new "Grape", 15
banana = Banana.new "Banana", 20
watermelon = Watermelon.new "Watermelon", 50

first_cart = Shoppingcart.new 

first_cart.add_product apple, 1
first_cart.add_product banana, 2

first_cart.actual_deals

first_cart.show_total_price_list

first_cart.total_cost








