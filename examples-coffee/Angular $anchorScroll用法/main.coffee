angular.module 'demo', []

DemoController = ($log, $location, $anchorScroll) ->
	vm = @;
	vm.model =
		yOffset: 0

	vm.fn =
		goAnchor: (anchor) ->
			oldHash = $location.hash()

			$location.hash anchor
			$anchorScroll.yOffset = parseInt vm.model.yOffset, 10
			$anchorScroll()

			$location.hash oldHash
			return
	return

angular
.module 'demo'
.controller 'DemoController', [
	'$log'
	'$location'
	'$anchorScroll'
	DemoController
]
