import 'package:flutter/material.dart';
import 'package:tu_comida/widgets/CatalogItem.dart';
import 'package:tu_comida/widgets/FancyFilter.dart';
import 'package:tu_comida/widgets/SearchItem.dart';
import 'package:tu_comida/widgets/SearchProduct.dart';
import 'package:tu_comida/widgets/StoriesList.dart';

import 'SearchPage.dart';

class Search extends StatefulWidget {
  Search({
    this.restaurant,
    this.time,
    this.price,
  });
  final String restaurant;
  final int time;
  final double price;
  @override
  _MySearchPageState createState() => _MySearchPageState(
        restaurant: restaurant,
        time: time,
        price: price,
      );
}

class _MySearchPageState extends State<Search> {
  _MySearchPageState({
    this.restaurant,
    this.time,
    this.price,
  });
  String restaurant;
  int time;
  double price;
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;
    return Scaffold(
        backgroundColor: Colors.grey.shade50,
        body: SafeArea(
          child: CustomScrollView(slivers: <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.grey.shade50,
              expandedHeight: 120,
              elevation: 0,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.only(left: 17, bottom: 17),
                title: Text(
                  'Search',style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
            SliverFillRemaining(
                child: Column(
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.only(bottom: 5, left: 12, right: 12, top: 9),
                  child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      color: Colors.grey.shade200.withOpacity(0.6),
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                          alignment: Alignment.centerLeft,
                          height: screenWidth * 12,
                          child: InkWell(
                              onTap: () => Navigator.push(context, null),
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.search, color: Colors.black45),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5.0),
                                      child: Text(
                                        'Search',
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 16,
                                            letterSpacing: 2),
                                      ),
                                    ),
                                  ],
                                ),
                              )))),
                ),
                // ver bien la estructura del fancy filter
                // ver qe la appBar  c pone la palabra del filtro
                Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight * 1.9,
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 12, bottom: screenHeight),
                      height: screenHeight * 13,
                      child: ListView(
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          ////////Aqi donde yo le paso x parametro los productos, hay q hacer un metodo q busq(haga la comparacion) y desp lo q retorne es
                          /// lo q pasa x parametro (SearchItem con sus SearchProducts)
                          FancyFilter(
                              image: Image.asset(
                                'assets/filtros/pescado.png',
                                fit: BoxFit.cover,
                              ),
                              header: 'Fish',
                              tap: () => Navigator.push(
                                  context,
                                  SearchPage(
                                    'Fish',
                                    [],
                                  ))),
                          FancyFilter(
                              image: Image.asset(
                                'assets/filtros/sushi.png',
                                fit: BoxFit.cover,
                              ),
                              header: 'Sushi',
                              tap: () => Navigator.push(
                                  context, SearchPage('Sushi', []))),
                          FancyFilter(
                              image: Image.asset(
                                'assets/filtros/pizza.png',
                                fit: BoxFit.cover,
                              ),
                              header: 'Pizza',
                              tap: () => Navigator.push(
                                  context, SearchPage('Pizza', []))),
                          FancyFilter(
                              image: Image.asset(
                                'assets/filtros/hamburguesas.png',
                                fit: BoxFit.cover,
                              ),
                              header: 'Hamburger',
                              tap: () => Navigator.push(
                                  context, SearchPage('Hamburger', []))),
                          FancyFilter(
                              image: Image.asset(
                                'assets/filtros/fastFood.png',
                                fit: BoxFit.cover,
                              ),
                              header: 'Fast Food',
                              tap: () => Navigator.push(
                                  context,
                                  SearchPage('Fast Food', [
                                    SearchItem(
                                      products: [
                                        CatalogItem(
                                          image: Image.asset(
                                              'assets/comida/food4.jpg',
                                              fit: BoxFit.cover),
                                          productName: 'Hamburgers with fries',
                                          productPrice: 5.30,
                                          description:
                                              '2 Hamburgers with a pack of fries',
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
                                          image: Image.asset(
                                              'assets/comida/food6.jpg',
                                              fit: BoxFit.cover),
                                          productName: 'Paella',
                                          productPrice: 7,
                                          description:
                                              'Paella with Shrimps and eggs',
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
                                          image: Image.asset(
                                              'assets/comida/food4.jpg',
                                              fit: BoxFit.cover),
                                          productName: 'Hamburgers with fries',
                                          productPrice: 3.30,
                                          description:
                                              '1 Hamburgers with a pack of fries',
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
                                          image: Image.asset(
                                              'assets/comida/food6.jpg',
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
                                      restaurant: 'BurgerKing',
                                      time: 50,
                                      price: 2.75,
                                      rebajaImage: Image.asset(
                                        'assets/stories/stories1.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                      rebajaDescription:
                                          '15% discount if you buy a combo',
                                      rebajaTime: 12,
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
                                      address:
                                          'Acosta/Goicuria & Mayia Rodriguez ',
                                     
                                      descriptionInfo:
                                          'Burger King offers the best Fast Food. The best choice with the best prices. We have food quality, and reliable suppliers. We are everyone´s preference.    ',
                                      
                                      workingDays: 'No days off',
                                      workingHours: '6 AM _ 2 AM',
                                      searchProducts: [
                                        SearchProduct(
                                          productPrice: 5.30,
                                          name: '3 Hamburgers with fries',
                                          image: Image.asset(
                                              'assets/comida/food7.jpg',
                                              fit: BoxFit.cover),
                                          productName:
                                              '3 Hamburgers with fries',
                                          description:
                                              '3 Hamburgers with a pack of fries',
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
                                        SearchProduct(productName: '2 Hamburgers with fries',
                                          productPrice: 3.50,
                                          name: '2 Hamburgers with fries',
                                          image: Image.asset(
                                              'assets/comida/food7.jpg',
                                              fit: BoxFit.cover),
                                          description:
                                              '2 Hamburgers with a pack of fries',
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
                                        SearchProduct(productName: 'Hamburger with fries',
                                          productPrice: 2.30,
                                          name: 'Hamburger with fries',
                                          image: Image.asset(
                                              'assets/comida/food7.jpg',
                                              fit: BoxFit.cover),
                                          description:
                                              'Hamburger with a pack of fries',
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
                                        )
                                      ],
                                    ),
                                    SearchItem(
                                      rebajaImage: Image.asset(
                                        'assets/stories/stories1.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                      products: [
                                        CatalogItem(
                                          image: Image.asset(
                                              'assets/comida/food4.jpg',
                                              fit: BoxFit.cover),
                                          productName: 'Hamburgers with fries',
                                          productPrice: 5.30,
                                          description:
                                              '2 Hamburgers with a pack of fries',
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
                                          image: Image.asset(
                                              'assets/comida/food6.jpg',
                                              fit: BoxFit.cover),
                                          productName: 'Paella',
                                          productPrice: 7,
                                          description:
                                              'Paella with Shrimps and eggs',
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
                                          image: Image.asset(
                                              'assets/comida/food4.jpg',
                                              fit: BoxFit.cover),
                                          productName: 'Hamburgers with fries',
                                          productPrice: 3.30,
                                          description:
                                              '1 Hamburgers with a pack of fries',
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
                                          image: Image.asset(
                                              'assets/comida/food6.jpg',
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
                                      rebajaDescription:
                                          '15% discount if you buy a combo',
                                      rebajaTime: 12,
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
                                      address:
                                          'Acosta/Goicuria & Mayia Rodriguez ',
                                   
                                      descriptionInfo:
                                          'Burger King offers the best Fast Food. The best choice with the best prices. We have food quality, and reliable suppliers. We are everyone´s preference.    ',
                                     
                                      workingDays: 'No days off',
                                      workingHours: '6 AM _ 2 AM',
                                      restaurant: 'MacDonalds',
                                      time: 45,
                                      price: 3.3,
                                      searchProducts: [
                                        
                                        SearchProduct(
                                          productPrice: 5.30,
                                          name: '3 Hamburgers with fries',
                                          image: Image.asset(
                                              'assets/comida/food7.jpg',
                                              fit: BoxFit.cover),
                                          productName:
                                              '3 Hamburgers with fries',
                                          description:
                                              '3 Hamburgers with a pack of fries',
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
                                        SearchProduct(productName: '2 Hamburgers with fries',
                                          productPrice: 3.50,
                                          name: '2 Hamburgers with fries',
                                          image: Image.asset(
                                              'assets/comida/food7.jpg',
                                              fit: BoxFit.cover),
                                          description:
                                              '2 Hamburgers with a pack of fries',
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
                                        SearchProduct(productName: 'Hamburger with fries',
                                          productPrice: 2.30,
                                          name: 'Hamburger with fries',
                                          image: Image.asset(
                                              'assets/comida/food7.jpg',
                                              fit: BoxFit.cover),
                                          description:
                                              'Hamburger with a pack of fries',
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
                                        )
                                      ],
                                    ),
                                  ]))),
                          FancyFilter(
                              image: Image.asset(
                                'assets/filtros/kebabs.png',
                                fit: BoxFit.cover,
                              ),
                              header: 'Kebabs',
                              tap: () => Navigator.push(
                                  context, SearchPage('Kebabs', []))),
                          FancyFilter(
                              image: Image.asset(
                                'assets/filtros/asiatica.png',
                                fit: BoxFit.cover,
                              ),
                              header: 'Asian',
                              tap: () => Navigator.push(
                                  context, SearchPage('Asian', []))),
                          FancyFilter(
                              image: Image.asset(
                                'assets/filtros/pasteles.png',
                                fit: BoxFit.cover,
                              ),
                              header: 'Pastels',
                              tap: () => Navigator.push(
                                  context, SearchPage('Pastels', []))),
                          FancyFilter(
                              image: Image.asset(
                                'assets/filtros/postres.png',
                                fit: BoxFit.cover,
                              ),
                              header: 'Dessert',
                              tap: () => Navigator.push(
                                  context, SearchPage('Dessert', []))),
                          FancyFilter(
                              image: Image.asset(
                                'assets/filtros/alimentos_saludable.png',
                                fit: BoxFit.cover,
                              ),
                              header: 'Healthy Food',
                              tap: () => Navigator.push(
                                  context, SearchPage('Healty Food', []))),
                          FancyFilter(
                              image: Image.asset(
                                'assets/filtros/carne_pescado.png',
                                fit: BoxFit.cover,
                              ),
                              header: 'Fish and Meat',
                              tap: () => Navigator.push(
                                  context, SearchPage('Fish and Meat', []))),
                          FancyFilter(
                              image: Image.asset(
                                'assets/filtros/caldos.png',
                                fit: BoxFit.cover,
                              ),
                              header: 'Soups',
                              tap: () => Navigator.push(
                                  context, SearchPage('Soups', []))),
                          FancyFilter(
                              image: Image.asset(
                                'assets/filtros/rusa.png',
                                fit: BoxFit.cover,
                              ),
                              header: 'Russian',
                              tap: () => Navigator.push(
                                  context, SearchPage('Russian', []))),
                          FancyFilter(
                              image: Image.asset(
                                'assets/filtros/uzbek.png',
                                fit: BoxFit.cover,
                              ),
                              header: 'Uzbek',
                              tap: () => Navigator.push(
                                  context, SearchPage('Uzbek', []))),
                          FancyFilter(
                              image: Image.asset(
                                'assets/filtros/india.png',
                                fit: BoxFit.cover,
                              ),
                              header: 'Indian',
                              tap: () => Navigator.push(
                                  context, SearchPage('Indian', []))),
                          FancyFilter(
                              image: Image.asset(
                                'assets/filtros/desayunos.png',
                                fit: BoxFit.cover,
                              ),
                              header: 'Breakfast',
                              tap: () => Navigator.push(
                                  context, SearchPage('BreakFast', []))),
                          FancyFilter(
                              image: Image.asset(
                                'assets/filtros/tiendas.png',
                                fit: BoxFit.cover,
                              ),
                              header: 'Shop',
                              tap: () => Navigator.push(
                                  context, SearchPage('Shop', []))),
                        ],
                      ),
                    )),
                StoriesList(),
              ],
            ))
          ]),
        ));
  }
}
