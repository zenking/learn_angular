class config
	@$inject = ['$stateProvider', '$urlRouterProvider']

	constructor: ($stateProvider, $urlRouterProvider)->

		$urlRouterProvider
			.when '/', 'home'
			.otherwise '/home'

		##这种对象形式的路由要注意的是name和parent字段
		home =
			name: 'home'
			url: '/home'
			templateUrl: './home/home.tpl.html'
			controller: 'HomeController'
			controllerAs: 'home'
			resolve:
				name: (HomeService) ->
					HomeService.getName()

		contact =
			name: 'contact'
			url: '/contact'
			templateUrl: './contact/contact.tpl.html'
			controller: 'ContactController as contact'

		contactList =
			name: 'contact.list'
			url: '/list'
			parent: contact
			templateUrl: './contact/contactList/contactList.tpl.html'
			controller: 'ContactListController'
			controllerAs: 'contactList'

		about =
			name: 'about'
			url: '/about'
			template: """
				<div class="container-fluid">
					<p>This is about page</p>
				</div>
			"""

		$stateProvider
			.state home
			.state contact
			.state contactList
			.state about

		return


angular
.module 'app'
.config config