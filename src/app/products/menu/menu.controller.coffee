(->
  class ProductsMenuController
    constructor: (@$scope, @$state, @$stateParams, @CategoriesResource) ->
      @categories = @CategoriesResource.index()
      @categories.unshift({id: 0, title: "All"})

    selectCategory: (id) ->
      @$scope.$broadcast('tab:change', {category_id: id})

  ProductsMenuController.$inject = ['$scope', '$state', '$stateParams', 'CategoriesResource']

  angular
    .module('ndAssociatesTest.controllers')
    .controller 'ProductsMenuController', ProductsMenuController
)()
