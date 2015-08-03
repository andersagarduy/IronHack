var Car = function(model, noise) {
	this.model = model;
 	this.noise = noise;
 	this.wheels = 4;
}; 

Car.prototype.makeNoise = function () {
	console.log(this.noise);
};


--------------------------------------------------------

var car = new Car("Toyota", "Brrrr!");
var anotherCar = new Car("Renault", "Grrroong!"); 
var thirdCar = new Car("Seat", "Poketajadoifj");

car.makeNoise();
anotherCar.makeNoise();

var secondcar = {};


for (var key in car)
{
	secondcar[key] = car[key];
	console.log('My car has ' + key 'which is' + Car[key]);
}


secondcar.makeNoise();
secondcar.model = 'Lexus';
secondcar.noise = 'Brrrrrrooooooooommmmmm';
secondcar.makeNoise();

console.log('second car prototype is ' + second.constructor);
