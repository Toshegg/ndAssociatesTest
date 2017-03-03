angular
  .module 'ndAssociatesTest.resources', []

angular
  .module 'ndAssociatesTest.controllers', []

angular
  .module 'ndAssociatesTest.directives', []

angular
  .module 'ndAssociatesTest',
  [
    'ndAssociatesTest.resources',
    'ndAssociatesTest.controllers',
    'ndAssociatesTest.directives',
    'ngAnimate',
    'ngCookies',
    'ngTouch',
    'ngSanitize',
    'ngMessages',
    'ngAria',
    'ngResource',
    'ui.router',
    'ui.bootstrap',
    'LocalStorageModule'
  ]
