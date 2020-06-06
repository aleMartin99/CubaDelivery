import 'package:flutter/material.dart';
import 'package:tu_comida/pages/PlaceCatalog.dart';

import 'CatalogItem.dart';
import 'SearchProduct.dart';

class SearchItem extends StatelessWidget {
  SearchItem({
    this.restaurant,
    this.time,
    this.price,
    this.searchProducts,
    this.priceRange,
    this.initDelivery,
    this.finalDelivery,
    this.classification1,
    this.cant1,
    this.classification2,
    this.cant2,
    this.classification3,
    this.cant3,
    this.classification4,
    this.cant4,
    this.classification5,
    this.cant5,
    this.classification6,
    this.cant6,
    this.products,
    this.rebajaImage,
    this.rebajaDescription,
    this.rebajaTime,
    this.descriptionInfo,
    this.workingDays,
    this.workingHours,
    this.address,
  });
  final String restaurant;
  final int time;
  final double price;
  final List<SearchProduct> searchProducts;

  //final int time;
  //final double price;
  final double priceRange;
  final double initDelivery;
  final double finalDelivery;
  // final String restaurant;
  final String classification1;
  final int cant1;
  final String classification2;
  final int cant2;
  final String classification3;
  final int cant3;
  final String classification4;
  final int cant4;
  final String classification5;
  final int cant5;
  final String classification6;
  final int cant6;
  final List<CatalogItem> products;
  final Image rebajaImage;
  final String rebajaDescription;
  final double rebajaTime;
  final String descriptionInfo;
  final String workingDays;
  final String workingHours;
  final String address;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;

    return Padding(
      padding: EdgeInsets.only(bottom: screenHeight * 1),
      child: SizedBox(
        // height: screenHeight * 30,
        width: screenWidth * 95,
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 2.5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: InkWell(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 10),
                  child: Text(
                    '$restaurant',
                    style: TextStyle(
                      fontSize: screenHeight * 2.8,
                      color: Colors.black,
                    ),
                  ),
                ),
                FittedBox(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(7),
                        child: TimeBubble(
                          onPressed: null,
                          time: this.time,
                        ),
                      ),
                      FittedBox(
                        child: Padding(
                          padding: EdgeInsets.all(7),
                          child:
                              PriceBubble(onPressed: null, price: this.price),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: screenWidth * 50,
                  child: ListView(
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: searchProducts,
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlaceCatalog(
                            time: time,
                            price: price,
                            priceRange: priceRange,
                            initDelivery: initDelivery,
                            finalDelivery: finalDelivery,
                            restaurant: restaurant,
                            classification1: classification1,
                            cant1: cant1,
                            classification2: classification2,
                            cant2: cant2,
                            classification3: classification3,
                            cant3: cant3,
                            classification4: classification4,
                            cant4: cant4,
                            classification5: classification5,
                            cant5: cant5,
                            classification6: classification6,
                            cant6: cant6,
                            products: products,
                            rebajaImage: rebajaImage,
                            rebajaDescription: rebajaDescription,
                            rebajaTime: rebajaTime,
                            descriptionInfo: descriptionInfo,
                            workingDays: workingDays,
                            workingHours: workingHours,
                            address: address,
                          )));
            },
            splashColor:
                Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
            highlightColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}

class TimeBubble extends StatelessWidget {
  @override
  TimeBubble({@required this.onPressed, this.time});
  final int time;
  final GestureTapCallback onPressed;
  //FancyButton ({@required this.onPressed});
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;
    return Container(
      height: screenWidth * 8,
      width: screenWidth * 17,
      child: RawMaterialButton(
        fillColor: Colors.grey.shade200,
        // splashColor: Colors.tealAccent,
        child: Text(
          "$time min",
          style: TextStyle(color: Colors.green, fontSize: screenHeight * 1.4),
        ),
        onPressed: onPressed,
        shape: const StadiumBorder(),
      ),
    );
  }
}

class PriceBubble extends StatelessWidget {
  @override
  PriceBubble({@required this.onPressed, this.price});
  final double price;
  final GestureTapCallback onPressed;
  //FancyButton ({@required this.onPressed});
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;
    return Container(
      height: screenWidth * 8,
      width: screenWidth * 25,
      child: RawMaterialButton(
        fillColor: Colors.grey.shade200,
        // splashColor: Colors.tealAccent,
        child: Text(
          ///// arreglar moneda depende d lo q c qiera
          " from $price cuc",
          style: TextStyle(color: Colors.black54, fontSize: screenHeight * 1.4),
        ),
        onPressed: onPressed,
        shape: const StadiumBorder(),
      ),
    );
  }
}
