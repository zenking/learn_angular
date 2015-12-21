
class ContactDetailController
	@$inject = ['$log', '$stateParams']

	constructor: ($log, $stateParams)->
		vm = @

		$log.info $stateParams
		vm.$stateParams = $stateParams

		return

angular
.module 'app'
.controller 'ContactDetailController', ContactDetailController