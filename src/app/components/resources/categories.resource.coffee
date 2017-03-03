(->
  CategoriesResource = () ->
    items = [
          {
            id: 1,
            title: "Phones"
          },
          {
            id: 2,
            title: "Computers"
          }
          {
            id: 3,
            title: "Consoles"
          }

        ]

    return {
      index: () ->
        return angular.copy(items)
    }

  angular
    .module('ndAssociatesTest.resources')
    .factory('CategoriesResource', CategoriesResource)
)()
