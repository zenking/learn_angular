// Generated by CoffeeScript 1.10.0
(function() {
  var HomeController;

  HomeController = (function() {
    HomeController.$inject = ['$log', 'name'];

    function HomeController($log, name) {
      var vm;
      vm = this;
      vm.content = 'This is home page';
      vm.name = name;
      return;
    }

    return HomeController;

  })();

  angular.module('app').controller('HomeController', HomeController);

}).call(this);

//# sourceMappingURL=home.controller.js.map
