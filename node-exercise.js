var request = require('request');
var i = 1;
var total = 0;
var answers = 0;
var tasks = []

	for (i = 0; i<=5; i++) {
	var url = 'http://stats.mediasmart.es/bulk/test-2014/account-0' + i + '.json';
	request(url, function(err,res,body)
	{
    	if (!err && res.statusCode==200)
    	{
        	body = JSON.parse(body);
        	console.log('Debt: %s', body.Debt);
        	total += body.Debt;
        	answers += 1;
        	if (answers == 5) {
        	console.log("Partial total is " + body.Debt);
       	 	}
    	}
	});

var request = require('request');

	function getDebtReader(url)
	{
    return function(callback)
    	{
        	request(file, function(error, result, body)
        	{
            	if (error || result.statusCode != 200)
            	{
                	return callback('Could not read ' + url);
            	}
            	body = JSON.parse(body);
            	return callback(null, body.Debt);
        	});
    	};
	}
};

getDebtReader();	

async.series(tasks, function(error, result) {
	console.log('Result is' + result);
	var total = 0;
	result.forEach(function(value) {
		total += value;
	});
	console.log('total is' + total);
});



