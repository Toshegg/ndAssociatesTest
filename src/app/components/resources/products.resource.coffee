(->
  ProductsResource = () ->
    items = [
          {
            id: 1,
            title: "Iphone 5",
            avatar: "http://lowendmac.com/wp-content/uploads/iphone-5.jpg",
            description: "The iPhone 5 is a smartphone that was designed and marketed by Apple Inc. It is the sixth generation of the iPhone, succeeding the iPhone 4S and preceding the iPhone 5S and iPhone 5C. Formally unveiled as part of a press event on September 12, 2012, it was released on September 21, 2012.[12] It was the first iPhone to be completely developed under the guidance of Tim Cook and the last iPhone to be overseen by Steve Jobs."
            category_id: 1
            price: 500
          },
          {
            id: 2,
            title: "Macbook Pro",
            avatar: "https://store.storeimages.cdn-apple.com/4974/as-images.apple.com/is/image/AppleInc/aos/published/images/m/bp/mbp15touch/silver/mbp15touch-silver-select-201610?wid=452&hei=420&fmt=jpeg&qlt=95&op_sharpen=0&resMode=bicub&op_usm=0.5,0.5,0,0&iccEmbed=0&layer=comp&.v=1478283596610",
            description: "The MacBook Pro (sometimes abbreviated MBP)[1] is a line of Macintosh portable computers introduced in January 2006 by Apple Inc. Replacing the PowerBook G4, the MacBook Pro was the second model to be announced during the Apple–Intel transition, after the iMac. It is the high-end model of the MacBook family and is currently available in 13- and 15-inch screen sizes. A 17-inch version was available between April 2006 and June 2012.",
            category_id: 2
            price: 2000
          },
          {
            id: 3
            title: "Sega Mega Drive",
            avatar: "http://vignette2.wikia.nocookie.net/sonic/images/f/fe/SegaMegadrive2.jpg/revision/latest?cb=20070302135923",
            description: "The Sega Genesis, known as the Mega Drive (Japanese: メガドライブ Hepburn: Mega Doraibu?) in most regions outside North America, is a 16-bit home video game console which was developed and sold by Sega Enterprises, Ltd. The Genesis was Sega's third console and the successor to the Master System. Sega first released the console as the Mega Drive in Japan in 1988, followed by a North American debut under the Genesis moniker in 1989. In 1990, the console was distributed as the Mega Drive by Virgin Mastertronic in Europe, by Ozisoft in Australasia, and by Tec Toy in Brazil. In South Korea, the systems were distributed by Samsung and were known as the Super Gam*Boy, and later the Super Aladdin Boy.",
            category_id: 3
            price: 100
          },
          {
            id: 4
            title: "Morie Oreim",
            avatar: "http://vignette2.wikia.nocookie.net/sonic/images/f/fe/SegaMegadrive2.jpg/revision/latest?cb=20070302135923",
            description: "The Sega Genesis, known as the Mega Drive (Japanese: メガドライブ Hepburn: Mega Doraibu?) in most regions outside North America, is a 16-bit home video game console which was developed and sold by Sega Enterprises, Ltd. The Genesis was Sega's third console and the successor to the Master System. Sega first released the console as the Mega Drive in Japan in 1988, followed by a North American debut under the Genesis moniker in 1989. In 1990, the console was distributed as the Mega Drive by Virgin Mastertronic in Europe, by Ozisoft in Australasia, and by Tec Toy in Brazil. In South Korea, the systems were distributed by Samsung and were known as the Super Gam*Boy, and later the Super Aladdin Boy.",
            category_id: 3
            price: 217
          },
          {
            id: 5
            title: "Lorem Ipsum",
            avatar: "http://vignette2.wikia.nocookie.net/sonic/images/f/fe/SegaMegadrive2.jpg/revision/latest?cb=20070302135923",
            description: "The Sega Genesis, known as the Mega Drive (Japanese: メガドライブ Hepburn: Mega Doraibu?) in most regions outside North America, is a 16-bit home video game console which was developed and sold by Sega Enterprises, Ltd. The Genesis was Sega's third console and the successor to the Master System. Sega first released the console as the Mega Drive in Japan in 1988, followed by a North American debut under the Genesis moniker in 1989. In 1990, the console was distributed as the Mega Drive by Virgin Mastertronic in Europe, by Ozisoft in Australasia, and by Tec Toy in Brazil. In South Korea, the systems were distributed by Samsung and were known as the Super Gam*Boy, and later the Super Aladdin Boy.",
            category_id: 3
            price: 221
          }

        ]

    return {
      index: (params) ->
        return angular.copy(_.where(items, params))
      show: (attrs) ->
        return angular.copy(_.findWhere(items, attrs))
    }

  angular
    .module('ndAssociatesTest.resources')
    .factory('ProductsResource', ProductsResource)
)()
