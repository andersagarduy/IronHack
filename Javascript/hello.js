function eat(food) {
if (food === "Pizza") {
	console.log("Yay pizza");
} else if (food === "Cookies") {
	console.log("Cookies are good too");
} else {
	console.log("Ok, enjoy eating" + food);
}
}

eat("Pizza");
eat("Cookies");


var i;

for (i = 1; i <= 42; i += 1) {
	console.log(i);
} 

var foods = ["pizza", "cookies", "bread"];

var capsFoods = foods.map(function(food) {
	return food.toUpperCase();
});


function averageColon(numbers) {
	var array = numbers.split(':');
	var total = 0;
	array.forEach(function(element) {
		total += parseInt(element);
});
return total / array.length;
}

var numbers = '80:70:90:100';
averageColon(numbers);




