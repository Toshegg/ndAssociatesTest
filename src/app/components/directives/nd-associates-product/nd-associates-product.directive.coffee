(->
  NdAssociatesProductDirective = () ->
    return {
      scope: {
        product: '=?'
      },
      restrict: 'E',
      controller: 'NdAssociatesProductDirectiveController',
      controllerAs: 'vm',
      templateUrl: 'app/components/directives/nd-associates-product/nd-associates-product.template.html',
      bindToController: true
    }

  angular
    .module('ndAssociatesTest.directives')
    .directive 'ndAssociatesProduct', NdAssociatesProductDirective
)()
