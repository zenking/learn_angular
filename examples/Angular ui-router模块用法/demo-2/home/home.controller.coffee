class HomeController
	@$inject = ['$log', 'name']

	constructor: ($log, name)->
		vm = @
		vm.content = 'This is home page'
		vm.name = name
		return

angular
.module 'app'
.controller 'HomeController', HomeController