var Animal = function(noise) {
	var self = this;
	self.noise = noise;
	self.makeNoise = function() {
		console.log(self.noise + '!!!');
	};
};

var animal = new Animal('Hihiihihihihi');

//setInterval(animal.makeNoise, 1000);

//setInterval(function() {
//	animal.makeNoise();
//}, 1000);

setInterval(animal.makeNoise.bind(animal), 1000);



