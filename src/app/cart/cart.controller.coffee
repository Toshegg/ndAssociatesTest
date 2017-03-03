(->
  class CartController
    constructor: (@$scope, @$state, @$stateParams, @localStorageService, @ProductsResource) ->
      @products = []

      @quantity = {}

      @localStorageService.keys().forEach (id) =>
        product = @ProductsResource.show({id: parseInt(id)})
        @products.push(product)
        @quantity[parseInt(id)] = parseInt(@localStorageService.get(id))

      @$scope.$watch('vm.quantity', angular.bind(@, @quantityChanged), true)

    totalPrice: () ->
      return @products
        .map (product) =>
          return product.price * @quantity[product.id]
        .reduce((a, b) ->
          a + b
        , 0)

    quantityChanged: () ->
      Object.keys(@quantity).forEach (product_id) =>
        if !@quantity[product_id]
          @quantity[product_id] = 1
        @localStorageService.set(product_id, @quantity[product_id])

    removeProduct: (product) ->
      @products.splice(@products.indexOf(product), 1)
      @localStorageService.remove(product.id)
      delete @quantity[product.id]

  CartController.$inject = ['$scope', '$state', '$stateParams', 'localStorageService', 'ProductsResource']

  angular
    .module('ndAssociatesTest.controllers')
    .controller 'CartController', CartController
)()
