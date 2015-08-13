var Shoppingcart = function() {
	this.cart = [];
	this.totalprice = 0;
};

Shoppingcart.prototype.addProduct = function(product, amount) {
	for (i = 0; i < amount; i++) {
		this.cart.push(product);
	}
	console.log("Adding " + product.name + " to the cart at a price of " + product.price + "€");
	//first_cart.discount();
}

Shoppingcart.prototype.calculatePrice = function() {
	for (i = 0; i < this.cart.length; i++) {











		this.totalprice = this.totalprice + this.cart[i].price
	}
	if (this.cart.length <= 5) {
		console.log(this.totalprice);
	} else {
		first_cart.discount();
	}
	//first_cart.appledisc();
}

Shoppingcart.prototype.appledisc = function() {
	console.log(this.cart[1].name);
	for (i = 0; i < this.cart.length; i++) {
		if (this.cart[i].name === "Apple" && this.amount === 2) {
		product.price = product.price/2;
		}
	}
}

Shoppingcart.prototype.discount = function() {
	if (this.cart.length > 5) {
		console.log("You have received a 10% discount on this cart!!")
		var discount = this.totalprice/10;
		this.totalprice = this.totalprice - discount;
		console.log(this.totalprice);
		first_cart.appledisc();
	} else {
		console.log(this.totalprice);
	}
}



var Item = function(name, price) {
	this.name = name;
	this.price = price;
};


var apple = new Item("Apple", 10);
var orange = new Item("Orange", 5);
var grape = new Item("Grape", 15);
var banana = new Item("Banana", 20);
var watermelon = new Item("Watermelon", 50);


var first_cart = new Shoppingcart();
first_cart.addProduct(apple, 1);
first_cart.addProduct(banana, 1);
first_cart.addProduct(apple, 1);
first_cart.addProduct(banana, 1);
first_cart.addProduct(banana, 1);
first_cart.addProduct(banana, 1);

first_cart.calculatePrice();




