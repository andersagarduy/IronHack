var prompt = require('prompt');


var Quiz = function() {
	var question1 = new Question("How many years have a person borned in 1995?", 19, 0);
	
	var question2 = new Question("Who is the protagonist of Yo Robot film?", "will smith", 1);
	
	var question3 = new Question("When was the Iphone 6 launched in Spain?", "september", 2);
	
	this.counter_id = 0;

	this.quiz_questions = [question1, question2, question3];
	this.start();
	

};
Quiz.prototype.start = function(){

	this.ask(this);	
	}


var Question = function(text, answer, id) {
	this.text = text;
	this.answer = answer;
	this.id = id;
};

Quiz.prototype.ask = function(array) {
		console.log(array.quiz_questions[array.counter_id].text);

		prompt.start();

		prompt.get(['answer'], function (err, answer) {
    // 
    // Log the results. 
    // 
    		console.log(array.quiz_questions[array.counter_id].answer);
	    	console.log('Command-line input received:');
	    	console.log('  Your answer is: ' + answer.answer);
	    	console.log(array.quiz_questions[array.counter_id].answer == answer.answer)
	    	if (array.quiz_questions[array.counter_id].answer == answer.answer) {
	  			array.counter_id ++;
	  			array.start();
  			} 
  		});


//questions[i].checker(answer);
		//call to the checker!!
		
};



Question.prototype.checker = function(user_answer) {
	if (user_answer === this.answer) {
		console.log("The answer is correct");
	} else {
		console.log("The answer is incorrect");
	}
};



var first_game = new Quiz();


