(->
  config = ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state 'home',
        url: ''
        abstract: true
        views:
          'navbar@':
            templateUrl: 'app/navbar/navbar.template.html'
            controller: 'NavbarController'
            controllerAs: 'vm'

      .state 'home.products',
        url: '/products'
        abstract: true
        views:
          'content@':
            templateUrl: 'app/products/menu/menu.template.html'
            controller: 'ProductsMenuController'
            controllerAs: 'vm'

      .state 'home.products.index',
        url: '/index'
        views:
          'content@home.products':
            templateUrl: 'app/products/index/index.template.html'
            controller: 'ProductsIndexController'
            controllerAs: 'vm'

      .state 'home.cart',
        url: '/cart'
        views:
          'content@':
            templateUrl: 'app/cart/cart.template.html'
            controller: 'CartController'
            controllerAs: 'vm'

    $urlRouterProvider
      .otherwise '/products/index'
  
  config.$inject = ['$stateProvider', '$urlRouterProvider']

  angular
    .module 'ndAssociatesTest'
    .config config
)()
