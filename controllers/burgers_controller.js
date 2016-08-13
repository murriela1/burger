var express = require('express');
var methodOverride = require('method-override');
var bodyParser = require('body-parser');
var burger = require('../models/burger.js')
var router = express.Router();

router.get('/', function (req, res){
	res.redirect('/burgers');
});

router.get('/burgers', function (req, res) {
	burger.all(function (data) {
		var handlebarsObject = { burgers: data};
		console.log(handlebarsObject);
		res.render('index', handlebarsObject);

	});
});

router.post('/burgers/create', function (req, res){
	burger.create(['name', 'cheeseburger'], [req.body.name, req.body.cheeseburger], function () {
		res.redirect('/burgers');		
	});
});

router.put('/burgers/update/:id', function (req, res){
	var condition = 'id = ' + req.params.id;
	console.log('condition', condition);
	burger.update({ cheeseburger: req.body.cheeseburger }, condition, function () {
		res.redirect('/burgers');
	});
});

module.exports = router;


