(->
  class NavbarController
    constructor: (@$scope, @$state, @$stateParams, @localStorageService) ->
      @setProductsCount()

      @$scope.$on('LocalStorageModule.notification.setitem', (event, data) =>
        @setProductsCount()
      )

      @$scope.$on('LocalStorageModule.notification.removeitem', (event, data) =>
        @setProductsCount()
      )

    setProductsCount: () ->
      @products_count = 0

      @localStorageService.keys().forEach (key) =>
        @products_count += parseInt(@localStorageService.get(key))



  NavbarController.$inject = ['$scope', '$state', '$stateParams', 'localStorageService']

  angular
    .module('ndAssociatesTest.controllers')
    .controller 'NavbarController', NavbarController
)()
