(->
  class ProductsIndexController
    constructor: (@$scope, @$state, @$stateParams, @ProductsResource) ->
      @$scope.$on('tab:change', (event, data) =>
        if data.category_id == 0
          @products = @ProductsResource.index()
        else
          @products = @ProductsResource.index({category_id: data.category_id})
      )

  ProductsIndexController.$inject = ['$scope', '$state', '$stateParams', 'ProductsResource']

  angular
    .module('ndAssociatesTest.controllers')
    .controller 'ProductsIndexController', ProductsIndexController
)()
