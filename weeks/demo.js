var obj = {
	prop: 'p',
	print: function () {
		var prop = 'prop'
		console.log(this.prop);
		console.log(prop)
	};
};

// obj.prop - ' obj ' is to the left of the function call
obj.print()