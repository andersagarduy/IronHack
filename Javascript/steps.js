function decode(words) {
	var secretMessage = "";
	for (var i = 0; i < words.length; i++) {
	 	var word = words[i];
	 	console.log(i % 5);
		var letter = word[i % 5];
		secretMessage += letter;		
	}	
	return secretMessage;
}


var words = (["January", "lacks", "caveats", "hazardous","DOORS", "crying", "arrogantly", "climate", "proponent", "rebuttal"]);

console.log(decode(words));





function decode(message, reverted)
{
	if (reverted)
	{
		message = message.reverse();
	}
	var secretMessage = '';
	for (var i = 0; i < message.length; i++)
	{
		var word = message[i];
		var letter = word[i % 5];
		secretMessage += letter;
	}
	return secretMessage;
}

var result = decode(['dead', 'bygone', 'landing', 'cheaply', 'assumed', 'incorrectly', 'attention', 'agent'], false);
console.log('correct: ' + (result === 'dynamite'));
console.log(decode(['xavier', 'peter', 'pale', 'catan'], true));

