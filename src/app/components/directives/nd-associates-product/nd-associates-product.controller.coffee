(->
  class NdAssociatesProductDirectiveController
    constructor: (@$scope, @localStorageService) ->

    addToCart: () ->
      count = parseInt(@localStorageService.get(@product.id)) || 0
      count += 1

      @localStorageService.set(@product.id, count)


  NdAssociatesProductDirectiveController.$inject = ['$scope', 'localStorageService']

  angular
    .module('ndAssociatesTest.controllers')
    .controller 'NdAssociatesProductDirectiveController', NdAssociatesProductDirectiveController
)()
