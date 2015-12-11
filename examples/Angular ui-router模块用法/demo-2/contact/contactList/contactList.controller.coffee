class ContactListController
	@$inject = ['$log']

	constructor: ($log)->
		vm = @
		vm.list = [
			'老王',
			'小头爸爸'
			'大头儿子'
			'大头儿子妈'
		]
		return

angular
.module 'app'
.controller 'ContactListController', ContactListController