/**
 * Created by dulin on 2015/12/4.
 */
(function () {
    angular
        .module('demo')
        .config(config);

    config.$inject = ['$stateProvider', '$urlRouterProvider'];

    function config($stateProvider, $urlRouterProvider) {

        $urlRouterProvider
            .when('/', '/home')
            .otherwise('/home');


        $stateProvider
            .state('home', {
                url: '/home',
                //指定模版html字符串
                template: '<h1>Home</h1>'
            })
            .state('contact', {
                url: '/contact',
                //通过路径指定模版
                templateUrl: './contact/contact.tpl.html',
                controller: 'ContactController',
                controllerAs: 'contact',
                resolve: {
                    blocks: ['BlockService', function (BlockService) {
                        return BlockService.getBlocks();
                    }]
                }
            })
            .state('about', {
                url: '/about',
                templateUrl: './about/about.tpl.html'
            })
            .state('contact.block', {
                url: '/block/:blockName',
                //templateProvider可以注入别的服务
                templateProvider: function (blocks, $stateParams, $http) {

                    var tplMap = {
                        'game': './blocks/game/game.tpl.html',
                        'movie': './blocks/movie/movie.tpl.html',
                        'music': './blocks/music/music.tpl.html'
                    };

                    var block = blocks[$stateParams.blockName];

                    return $http.get(tplMap[block.type])
                        .then(function (rep) {
                            return rep.data;
                        });

                }
            })
    }

})();