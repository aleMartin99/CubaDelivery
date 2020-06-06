import 'package:flutter/material.dart';
import 'package:tu_comida/pages/PlaceCatalog.dart';
import 'package:tu_comida/pages/PurchaseConfirmation_1.dart';
import 'package:tu_comida/widgets/CatalogItem.dart';
import 'package:tu_comida/widgets/ShopCharges.dart';
import 'package:tu_comida/widgets/ShopItem.dart';
import 'package:tu_comida/widgets/ShopRecommended.dart';
import 'package:tu_comida/widgets/ShopRecommendedList.dart';

class Shop extends StatefulWidget {
  @override
  _MyShopPageState createState() => _MyShopPageState();
}

class _MyShopPageState extends State<Shop> {
  void onItemMenuPress(
      Choice choice, BuildContext context, PlaceCatalog destinationPlace) {
    if (choice.title == 'Go to the Restaurant') {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => destinationPlace));
    }
    // Aqi el metodo de vaciar la cesta
    else
      print('Lalalalla');
  }
String restaurant='BurgerKing';
  int cant = 0;
  final List<Choice> choices = const <Choice>[
    const Choice(title: 'Go to the Restaurant'),
    const Choice(title: 'Clear the Basket'),
  ];

  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;
    return Scaffold(
        
       bottomNavigationBar: Padding(
              padding: const EdgeInsets.only(
                  left: 12.0, right: 12, top: 2, bottom: 2),
              child: Container(
                width: double.maxFinite,
                child: Card(
                  color: Colors.green,
                  //Hacer Metodo comprar
                  child: InkWell(
                      onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PurchaseConfirmation1()));},
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Buy',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenWidth * 4.3),
                            ),Text(
                              '"Total Money" cuc',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenWidth * 4.3),
                            ),
                          ],
                        ),
                      )),
                ),
              )),
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.grey.shade50,
            expandedHeight: 120,
            title: Row(//crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black87,
                    ),
                    onPressed: () => //Navigator.pop(context),
                    null,
                  ),
                  PopupMenuButton<Choice>(
                    onSelected: (val) => onItemMenuPress(
                        val,
                        context,
                        PlaceCatalog(
                          restaurant: 'Burger King',
                          rebajaImage: Image.asset(
                            'assets/stories/stories1.jpg',
                            fit: BoxFit.cover,
                          ),
                          rebajaDescription: '15% discount if you buy a combo',
                          rebajaTime: 12,
                          time: 50,
                          price: 2.75,
                          initDelivery: 0,
                          finalDelivery: 2,
                          priceRange: 20,
                          classification1: 'Popular',
                          cant1: 2,
                          classification2: 'Snacks',
                          cant2: 3,
                          classification3: 'Sandwiches',
                          cant3: 7,
                          classification4: 'Drinks',
                          cant4: 3,
                          classification5: 'Hamburgers',
                          cant5: 1,
                          classification6: 'Desserts',
                          cant6: 8,
                          products: [
                            CatalogItem(
                              image: Image.asset('assets/comida/food4.jpg',
                                  fit: BoxFit.cover),
                              productName: 'Hamburgers with fries',
                              productPrice: 5.30,
                              description: '2 Hamburgers with a pack of fries',
                              theme1: 'Cheese',
                              only1: 'Gouda Cheese',
                              only2: 'Blue Cheese',
                              theme2: 'Meat',
                              theme3: 'Sauce',
                              only3: 'Pork',
                              only4: 'Chicken',
                              optional1: 'Teriyaki Sauce',
                              optional2: 'Cheese Sauce',
                              optional3: 'Invented Sauce',
                              cant: 0,
                            ),
                            CatalogItem(
                              image: Image.asset('assets/comida/food6.jpg',
                                  fit: BoxFit.cover),
                              productName: 'Paella',
                              productPrice: 7,
                              description: 'Paella with Shrimps and eggs',
                              theme1: 'Cheese',
                              only1: 'Gouda Cheese',
                              only2: 'Blue Cheese',
                              theme2: 'Meat',
                              theme3: 'Sauce',
                              only3: 'Pork',
                              only4: 'Chicken',
                              optional1: 'Teriyaki Sauce',
                              optional2: 'Cheese Sauce',
                              optional3: 'Invented Sauce',
                              cant: 0,
                            ),
                            CatalogItem(
                              image: Image.asset('assets/comida/food4.jpg',
                                  fit: BoxFit.cover),
                              productName: 'Hamburgers with fries',
                              productPrice: 3.30,
                              description: '1 Hamburgers with a pack of fries',
                              theme1: 'Cheese',
                              only1: 'Gouda Cheese',
                              only2: 'Blue Cheese',
                              theme2: 'Meat',
                              theme3: 'Sauce',
                              only3: 'Pork',
                              only4: 'Chicken',
                              optional1: 'Teriyaki Sauce',
                              optional2: 'Cheese Sauce',
                              optional3: 'Invented Sauce',
                              cant: 0,
                            ),
                            CatalogItem(
                              image: Image.asset('assets/comida/food6.jpg',
                                  fit: BoxFit.cover),
                              productName: 'Paella',
                              productPrice: 2,
                              description: 'Paella with Shrimps',
                              theme1: 'Cheese',
                              only1: 'Gouda Cheese',
                              only2: 'Blue Cheese',
                              theme2: 'Meat',
                              theme3: 'Sauce',
                              only3: 'Pork',
                              only4: 'Chicken',
                              optional1: 'Teriyaki Sauce',
                              optional2: 'Cheese Sauce',
                              optional3: 'Invented Sauce',
                              cant: 0,
                            ),
                          ],
                          address: 'Acosta/Goicuria & Mayia Rodriguez ',
                          descriptionInfo:
                              'Burger King offers the best Fast Food. The best choice with the best prices. We have food quality, and reliable suppliers. We are everyone´s preference.    ',
                          workingDays: 'No days off',
                          workingHours: '6 AM _ 2 AM',
                        )),
                    itemBuilder: (BuildContext context) {
                      return choices.map((Choice choice) {
                        return PopupMenuItem<Choice>(
                            value: choice, child: Text(choice.title));
                      }).toList();
                    },
                  )
                ]),
            elevation: 0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsetsDirectional.only(start: 60, bottom: 16),
              title: Text(
                'Shopping Basket',style: TextStyle(color: Colors.black),
              ),
            ),

            /// debe ser a partir de aqi que c quita cuando no hay conexion
          ), //// TODO todo el body de shop
          SliverList(
              delegate: SliverChildListDelegate([
            ListView(shrinkWrap: true, primary: false,
                // poner lugar dinamico
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 34.0, bottom: 10),
                    child: Text(
                      '$restaurant',
                      style: TextStyle(
                          fontSize: screenWidth * 4.6, color: Colors.black45),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 34.0, bottom: 0),
                    child: Divider(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0, bottom: 13),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: screenWidth * 27,
                            height: screenWidth * 20,
                            child: Card(
                              elevation: 0,
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: Image.asset(
                                'assets/logos/cubiertos.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 5,
                                    ),
                                    child: Text(
                                      'Number of people',
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: screenWidth * 4),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 4.0),
                                    child: Row(
                                      children: <Widget>[
                                        Card(
                                          elevation: 0.3,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0)),
                                          color: Colors.grey.shade100,
                                          child: InkWell(
                                            onTap: () => setState(() {
                                              if (cant > 0) cant--;
                                            }),
                                            child: Container(
                                              height: screenWidth * 8,
                                              width: screenWidth * 8,
                                              child: Icon(
                                                Icons.remove,
                                                color: Colors.black45,
                                                // size: 28,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 9.0, right: 9),
                                          child: Text(
                                            '$cant',
                                            style: TextStyle(
                                                //fontSize: screenHeight*1.8,
                                                color: Colors.black),
                                          ),
                                        ),
                                        Card(
                                          elevation: 0.3,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0)),
                                          color: Colors.grey.shade100,
                                          clipBehavior: Clip.antiAlias,
                                          child: InkWell(
                                            onTap: () => setState(() {
                                              cant++;
                                            }),
                                            child: Container(
                                              height: screenWidth * 8,
                                              width: screenWidth * 8,
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.black45,
                                                // size: 28,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 34.0,
                      bottom: 0,
                    ),
                    child: Divider(
                      height: 0,
                    ),
                  ),
                  ShopItem(
                    productName: 'Hamburgers with fries',
                    productPrice: 5.30,
                    description: '2 Hamburgers with a pack of fries',
                    theme1: 'Cheese',
                    only1: 'Gouda Cheese',
                    only2: 'Blue Cheese',
                    theme2: 'Meat',
                    theme3: 'Sauce',
                    only3: 'Pork',
                    only4: 'Chicken',
                    optional1: 'Teriyaki Sauce',
                    optional2: 'Cheese Sauce',
                    optional3: 'Invented Sauce',
                    image: Image.asset(
                      'assets/comida/food4.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  ShopItem(
                    productName: 'Hamburgers with fries',
                    productPrice: 5.30,
                    description: '2 Hamburgers with a pack of fries',
                    theme1: 'Cheese',
                    only1: 'Gouda Cheese',
                    only2: 'Blue Cheese',                                                                                                                                                                                                                   
                    theme2: 'Meat',
                    theme3: 'Sauce',
                    only3: 'Pork',
                    only4: 'Chicken',
                    optional1: 'Teriyaki Sauce',
                    optional2: 'Cheese Sauce',
                    optional3: 'Invented Sauce',
                    image: Image.asset(
                      'assets/comida/food4.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  ShopCharge(
                    charge: 'Shipping',
                    price: 0,
                    chargeColor: Colors.black87,
                    priceColor: Colors.black45,
                  ),
                  ShopCharge(
                    charge: 'Discounts',
                    price: -3.0,
                    chargeColor: Colors.black87,
                    priceColor: Colors.amber,
                  ),
                ]),
            Container(
              color: Colors.grey.shade200,
              child: Padding(
                padding: EdgeInsets.only(left: 26.0, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 17.0, bottom: 10, left: 1),
                      child: Text(
                        'Recommended',
                        style: TextStyle(
                            color: Colors.black, fontSize: screenWidth * 6),
                      ),
                    ),
                    Container(
                      height: screenWidth * 33,
                      child: RecommendedList(
                        recomendedItems: [
                          ShopRecommended(
                            productName: 'Hamburger with fries',
                            productPrice: 2.30,
                            description: 'Hamburger with a pack of fries',
                            theme1: 'Cheese',
                            only1: 'Gouda Cheese',
                            only2: 'Blue Cheese',
                            theme2: 'Meat',
                            theme3: 'Sauce',
                            only3: 'Pork',
                            only4: 'Chicken',
                            optional1: 'Teriyaki Sauce',
                            optional2: 'Cheese Sauce',
                            optional3: 'Invented Sauce',
                            image: Image.asset(
                              'assets/comida/food7.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          ShopRecommended(
                            productName: '2 Hamburgers with fries',
                            productPrice: 3.30,
                            description: '2 Hamburgers with a pack of fries',
                            theme1: 'Cheese',
                            only1: 'Gouda Cheese',
                            only2: 'Blue Cheese',
                            theme2: 'Meat',
                            theme3: 'Sauce',
                            only3: 'Pork',
                            only4: 'Chicken',
                            optional1: 'Teriyaki Sauce',
                            optional2: 'Cheese Sauce',
                            optional3: 'Invented Sauce',
                            image: Image.asset(
                              'assets/comida/food5.jpg',
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]))
        ]));
  }
}

class Choice {
  const Choice({this.title});
  final String title;
}
