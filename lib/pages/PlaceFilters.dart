import 'package:flutter/material.dart';
import 'package:tu_comida/widgets/FancyFilter.dart';
import 'package:tu_comida/widgets/MyFilter.dart';

class PlaceFilter extends MaterialPageRoute<void> {
  PlaceFilter(
      //List<String> filters,
      )
      : super(builder: (BuildContext context) {
          var screenWidth = MediaQuery.of(context).size.width / 100;
          var screenHeight = MediaQuery.of(context).size.height / 100;
          return Scaffold(
              bottomNavigationBar: BottomAppBar(
                elevation: 1.5,
                child: FittedBox(
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ///// hacer conadicion para botonosd aplicar y restablcer filtros
                      ///// cambiar color verde feo
                      Padding(
                        padding: EdgeInsets.only(
                            top: 10.0, bottom: 10, right: 6, left: 6),
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            clipBehavior: Clip.antiAlias,
                            color: Colors.grey.shade200,
                            child: Container(
                                alignment: Alignment.center,
                                height: screenHeight * 5.5,
                                width: screenWidth * 44.5,
                                child: InkWell(
                                    child: Text(
                                  'Clean',
                                  style: TextStyle(color: Colors.black),
                                )))),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 10.0, bottom: 10, right: 6, left: 6),
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            color: Colors.green,
                            clipBehavior: Clip.antiAlias,
                            child: Container(
                                alignment: Alignment.center,
                                height: screenHeight * 5.5,
                                width: screenWidth * 44.5,
                                child: InkWell(
                                    child: Text(
                                  'Apply',
                                  style: TextStyle(color: Colors.white),
                                )))),
                      ),
                    ],
                  ),
                ),
              ),
              appBar: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.white,
                title: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.close,
                        color: Colors.black87,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      'Filters',
                      style: TextStyle(
                          fontSize: screenHeight * 2, color: Colors.black),
                    ),
                  ],
                ),
              ),
              body: ListView(children: <Widget>[
                Container(
                  // color: Colors.red,
                  margin: EdgeInsets.only(
                    left: screenWidth * 3,
                    top: screenHeight * 3,
                  ),
                  child: Text('Kitchens and Dishes',
                      style: TextStyle(fontSize: screenHeight * 2.8)),
                ),
                Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight * 2.5,
                    ),
                    child: Container(
                      // color: Colors.red,
                      margin: EdgeInsets.only(
                          left: screenWidth * 2.5, bottom: screenHeight * 1.5),
                      height: screenHeight * 13.5,
                      child: ListView(
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          FancyFilter(
                            image: Image.asset(
                              'assets/filtros/pescado.png',
                              fit: BoxFit.cover,
                            ),
                            header: 'Fish',
                            tap: null,
                          ),
                          FancyFilter(
                            image: Image.asset(
                              'assets/filtros/sushi.png',
                              fit: BoxFit.cover,
                            ),
                            header: 'Sushi',
                            tap: null,
                          ),
                          FancyFilter(
                            image: Image.asset(
                              'assets/filtros/pizza.png',
                              fit: BoxFit.cover,
                            ),
                            header: 'Pizza',
                            tap: null,
                          ),
                          FancyFilter(
                            image: Image.asset(
                              'assets/filtros/hamburguesas.png',
                              fit: BoxFit.cover,
                            ),
                            header: 'Hamburger',
                            tap: null,
                          ),
                          FancyFilter(
                            image: Image.asset(
                              'assets/filtros/fastFood.png',
                              fit: BoxFit.cover,
                            ),
                            header: 'Fast Food',
                            tap: null,
                          ),
                          FancyFilter(
                            image: Image.asset(
                              'assets/filtros/kebabs.png',
                              fit: BoxFit.cover,
                            ),
                            header: 'Kebabs',
                            tap: null,
                          ),
                          FancyFilter(
                            image: Image.asset(
                              'assets/filtros/asiatica.png',
                              fit: BoxFit.cover,
                            ),
                            header: 'Asian',
                            tap: null,
                          ),
                          FancyFilter(
                            image: Image.asset(
                              'assets/filtros/pasteles.png',
                              fit: BoxFit.cover,
                            ),
                            header: 'Pastels',
                            tap: null,
                          ),
                          FancyFilter(
                            image: Image.asset(
                              'assets/filtros/postres.png',
                              fit: BoxFit.cover,
                            ),
                            header: 'Dessert',
                            tap: null,
                          ),
                          FancyFilter(
                            image: Image.asset(
                              'assets/filtros/alimentos_saludable.png',
                              fit: BoxFit.cover,
                            ),
                            header: 'Healthy Food',
                            tap: null,
                          ),
                          FancyFilter(
                            image: Image.asset(
                              'assets/filtros/carne_pescado.png',
                              fit: BoxFit.cover,
                            ),
                            header: 'Fish and Meat',
                            tap: null,
                          ),
                          FancyFilter(
                            image: Image.asset(
                              'assets/filtros/caldos.png',
                              fit: BoxFit.cover,
                            ),
                            header: 'Soups',
                            tap: null,
                          ),
                          FancyFilter(
                            image: Image.asset(
                              'assets/filtros/rusa.png',
                              fit: BoxFit.cover,
                            ),
                            header: 'Russian',
                            tap: null,
                          ),
                          FancyFilter(
                            image: Image.asset(
                              'assets/filtros/uzbek.png',
                              fit: BoxFit.cover,
                            ),
                            header: 'Uzbek',
                            tap: null,
                          ),
                          FancyFilter(
                            image: Image.asset(
                              'assets/filtros/india.png',
                              fit: BoxFit.cover,
                            ),
                            header: 'Indian',
                            tap: null,
                          ),
                          FancyFilter(
                            image: Image.asset(
                              'assets/filtros/desayunos.png',
                              fit: BoxFit.cover,
                            ),
                            header: 'Breakfast',
                            tap: null,
                          ),
                          FancyFilter(
                            image: Image.asset(
                              'assets/filtros/tiendas.png',
                              fit: BoxFit.cover,
                            ),
                            header: 'Shop',
                            tap: null,
                          ),
                        ],
                      ),
                    )),
                Container(
                  // color: Colors.red,
                  margin: EdgeInsets.only(
                    left: screenWidth * 3,
                    top: screenHeight * 3,
                  ),
                  child: Text('Other Filters',
                      style: TextStyle(fontSize: screenHeight * 2.8)),
                ),
                MyFilter(text: 'By Offer'),
                MyFilter(text: 'Best selling '),
                MyFilter(text: 'Something else'),
              ]));
        });
}
