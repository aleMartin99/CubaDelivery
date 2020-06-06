import 'package:flutter/material.dart';
import 'package:tu_comida/widgets/CatalogItem.dart';
import 'package:tu_comida/widgets/PlaceItem.dart';
import 'package:tu_comida/widgets/PlaceList.dart';
import 'package:tu_comida/widgets/StoriesList.dart';

import 'PlaceFilters.dart';

class Place extends StatefulWidget {
  @override
  _MyPlacePageState createState() => _MyPlacePageState();
}

class _MyPlacePageState extends State<Place> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      //extendBodyBehindAppBar: true,
      body: myBody(context),
    );
  }
}

Widget myBody(BuildContext context) {
  var screenWidth = MediaQuery.of(context).size.width / 100;
  var screenHeight = MediaQuery.of(context).size.height / 100;
  return CustomScrollView(slivers: <Widget>[
    SliverAppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Here My Location',
            style: TextStyle(
              fontSize: screenWidth * 4,
              color: Colors.black45,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              color: Colors.black45,
            ),
            onPressed: () {
              Navigator.push(context, PlaceFilter());
            },
          )
        ],
      ),
      elevation: 0,
      pinned: true,
      backgroundColor: Colors.grey.shade50,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(),
    ),
    SliverFillRemaining(
        hasScrollBody: false,
        fillOverscroll: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  left: screenWidth * 3, top: screenHeight * 1.6),
              child: Text('CUBA\nDELIVERY',
                  style: TextStyle(fontSize: screenHeight * 3)),
            ),
            StoriesList(),
            Container(
              margin: EdgeInsets.only(
                  left: screenWidth * 3,
                  top: screenHeight * 1,
                  bottom: screenHeight * 1.6),
              child: Text('Restaurants',
                  style: TextStyle(
                      fontSize: screenHeight * 3, color: Colors.black)),
            ),
            PlaceList(places: [
              PlaceItem(
                image: Image.asset(
                  'assets/comida/food4.jpg',
                  fit: BoxFit.cover,
                ),
                restaurant: 'BurgerKing',
                logo: Image.asset(
                  'assets/logos/burger_king.jfif',
                  fit: BoxFit.cover,
                ),
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
              ),
              PlaceItem(
                image: Image.asset(
                  'assets/comida/food7.jpg',
                  fit: BoxFit.cover,
                ),
                restaurant: 'Dominos´s Pizza',
                logo: Image.asset(
                  'assets/logos/dominos_pizza.png',
                  fit: BoxFit.cover,
                ),
                time: 30,
                price: 4.25,
                initDelivery: 2,
                finalDelivery: 5,
                priceRange: 25,
                classification1: 'Popular',
                cant1: 2,
                classification2: 'Snacks',
                cant2: 4,
                classification3: 'Salads',
                cant3: 9,
                classification4: 'Drinks',
                cant4: 3,
                classification5: 'Pizzas',
                cant5: 5,
                classification6: 'Desserts',
                cant6: 2,
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
                rebajaImage: Image.asset(
                  'assets/stories/stories1.jpg',
                  fit: BoxFit.cover,
                ),
                rebajaDescription: '12% for orders above 20cuc ',
                rebajaTime: 12,
                address: 'Acosta/Goicuria & Mayia Rodriguez ',
                descriptionInfo:
                    'Domino´s Pizza offers the best Fast Food. The best choice with the best prices  ',
                workingDays: 'No days off',
                workingHours: '6 AM _ 2 AM',
              ),
              PlaceItem(
                image: Image.asset(
                  'assets/comida/food5.jpg',
                  fit: BoxFit.cover,
                ),
                restaurant: 'MacDonalds',
                logo: Image.asset(
                  'assets/logos/macdonalds.png',
                  fit: BoxFit.fill,
                ),
                time: 45,
                price: 3.30,
                initDelivery: 0,
                finalDelivery: 1.50,
                priceRange: 30,
                classification1: 'Popular',
                cant1: 1,
                classification2: 'BreakFast',
                cant2: 2,
                classification3: 'Snacks',
                cant3: 7,
                classification4: 'Drinks',
                cant4: 2,
                classification5: 'Hamburgers',
                cant5: 6,
                classification6: 'Hot Dogs',
                cant6: 3,
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
                    'Macdonalds offers the best Fast Food. The best choice with the best prices  ',
                workingDays: 'No days off',
                workingHours: '6 AM _ 2 AM',
              ),
            ]),
          ],
        ))
  ]);
}
