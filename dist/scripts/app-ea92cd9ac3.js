(function(){angular.module("ndAssociatesTest.resources",[]),angular.module("ndAssociatesTest.controllers",[]),angular.module("ndAssociatesTest.directives",[]),angular.module("ndAssociatesTest",["ndAssociatesTest.resources","ndAssociatesTest.controllers","ndAssociatesTest.directives","ngAnimate","ngCookies","ngTouch","ngSanitize","ngMessages","ngAria","ngResource","ui.router","ui.bootstrap"])}).call(this),function(){!function(){var e;return e=function(){return{scope:{product:"=?"},restrict:"E",controller:"NdAssociatesProductDirectiveController",controllerAs:"vm",templateUrl:"app/components/directives/nd-associates-product/nd-associates-product.template.html",bindToController:!0}},angular.module("ndAssociatesTest.directives").directive("ndAssociatesProduct",e)}()}.call(this),function(){!function(){var e;return e=function(){function e(e){this.$scope=e}return e}(),e.$inject=["$scope"],angular.module("ndAssociatesTest.controllers").controller("NdAssociatesProductDirectiveController",e)}()}.call(this),function(){!function(){var e;return e=function(){function e(e,t,s,a){this.$scope=e,this.$state=t,this.$stateParams=s,this.ProductsResource=a,this.products=this.ProductsResource.index()}return e}(),e.$inject=["$scope","$state","$stateParams","ProductsResource"],angular.module("ndAssociatesTest.controllers").controller("ProductsIndexController",e)}()}.call(this),function(){!function(){var e;return e=function(){return{index:function(){return[{id:1,title:"Iphone 5",avatar:"http://lowendmac.com/wp-content/uploads/iphone-5.jpg",description:"The iPhone 5 is a smartphone that was designed and marketed by Apple Inc. It is the sixth generation of the iPhone, succeeding the iPhone 4S and preceding the iPhone 5S and iPhone 5C. Formally unveiled as part of a press event on September 12, 2012, it was released on September 21, 2012.[12] It was the first iPhone to be completely developed under the guidance of Tim Cook and the last iPhone to be overseen by Steve Jobs.",price:500},{id:2,title:"Macbook Pro",avatar:"https://store.storeimages.cdn-apple.com/4974/as-images.apple.com/is/image/AppleInc/aos/published/images/m/bp/mbp15touch/silver/mbp15touch-silver-select-201610?wid=452&hei=420&fmt=jpeg&qlt=95&op_sharpen=0&resMode=bicub&op_usm=0.5,0.5,0,0&iccEmbed=0&layer=comp&.v=1478283596610",description:"The MacBook Pro (sometimes abbreviated MBP)[1] is a line of Macintosh portable computers introduced in January 2006 by Apple Inc. Replacing the PowerBook G4, the MacBook Pro was the second model to be announced during the Apple–Intel transition, after the iMac. It is the high-end model of the MacBook family and is currently available in 13- and 15-inch screen sizes. A 17-inch version was available between April 2006 and June 2012.",price:2e3},{id:3,title:"Sega Mega Drive",avatar:"http://vignette2.wikia.nocookie.net/sonic/images/f/fe/SegaMegadrive2.jpg/revision/latest?cb=20070302135923",description:"The Sega Genesis, known as the Mega Drive (Japanese: メガドライブ Hepburn: Mega Doraibu?) in most regions outside North America, is a 16-bit home video game console which was developed and sold by Sega Enterprises, Ltd. The Genesis was Sega's third console and the successor to the Master System. Sega first released the console as the Mega Drive in Japan in 1988, followed by a North American debut under the Genesis moniker in 1989. In 1990, the console was distributed as the Mega Drive by Virgin Mastertronic in Europe, by Ozisoft in Australasia, and by Tec Toy in Brazil. In South Korea, the systems were distributed by Samsung and were known as the Super Gam*Boy, and later the Super Aladdin Boy.",price:100}]}}},angular.module("ndAssociatesTest.resources").factory("ProductsResource",e)}()}.call(this),function(){!function(){var e;return e=function(){function e(e,t,s){this.$scope=e,this.$state=t,this.$stateParams=s}return e}(),e.$inject=["$scope","$state","$stateParams"],angular.module("ndAssociatesTest.controllers").controller("NavbarController",e)}()}.call(this),function(){!function(){var e;return e=function(){},angular.module("ndAssociatesTest").run(e)}()}.call(this),function(){!function(){var e;return e=function(e,t){return e.state("home",{url:"","abstract":!0,views:{"navbar@":{templateUrl:"app/navbar/navbar.template.html",controller:"NavbarController",controllerAs:"vm"}}}).state("home.products",{url:"/products",views:{"content@":{templateUrl:"app/products/index/index.template.html",controller:"ProductsIndexController",controllerAs:"vm"}}}),t.otherwise("/products")},e.$inject=["$stateProvider","$urlRouterProvider"],angular.module("ndAssociatesTest").config(e)}()}.call(this),function(){angular.module("ndAssociatesTest").constant("malarkey",malarkey).constant("moment",moment)}.call(this),function(){!function(){var e;return e=function(){},angular.module("ndAssociatesTest").config(e)}()}.call(this),angular.module("ndAssociatesTest").run(["$templateCache",function(e){e.put("app/navbar/navbar.template.html",'<div class="navbar navbar-default"><div class=container><div class=navbar-header><a ui-sref=home.products class=navbar-brand>Shop</a></div><ul class="nav navbar-nav"><li ui-sref-active=active><a ui-sref=home.products>Products</a></li></ul></div></div>'),e.put("app/products/index/index.template.html",'<div class=products-list><div ng-repeat="product in vm.products" class=products-list__product><nd-associates-product product=product></nd-associates-product></div></div>'),e.put("app/components/directives/nd-associates-product/nd-associates-product.template.html",'<div class=nd-associates-product><div class=nd-associates-product__avatar><img ng-src={{vm.product.avatar}}></div><div class=nd-associates-product__title><span>{{vm.product.title}}</span></div><div class=nd-associates-product__description><span>{{vm.product.description.substring(0,100)}}</span></div><div class=nd-associates-product__price><span>{{vm.product.price}}</span></div><div class=nd-associates-product__add-to-cart><button class="btn btn-default">Add to cart</button></div></div>')}]);
//# sourceMappingURL=../maps/scripts/app-ea92cd9ac3.js.map