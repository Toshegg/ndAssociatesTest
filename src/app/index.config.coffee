(->
  config = (localStorageServiceProvider) ->
    localStorageServiceProvider.setPrefix('ndAssociatesTest')
    localStorageServiceProvider.setNotify(true, true)

  config.$inject = ['localStorageServiceProvider']

  angular
    .module 'ndAssociatesTest'
    .config config
)()
