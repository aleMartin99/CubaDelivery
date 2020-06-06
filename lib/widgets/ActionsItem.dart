import 'package:flutter/material.dart';
import 'package:tu_comida/pages/PlaceCatalog.dart';

import 'CatalogItem.dart';

class ActionsItem extends StatelessWidget {
  ActionsItem({
    this.image,
    this.description,
    this.logo,

    // this.image,
    this.priceRange,
    // this.logo,
    this.restaurant,
    this.time,
    this.price,
    this.initDelivery,
    this.finalDelivery,
    this.classification1,
    this.classification2,
    this.classification3,
    this.classification4,
    this.classification5,
    this.classification6,
    this.cant1,
    this.cant2,
    this.cant3,
    this.cant4,
    this.cant5,
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

  final Image image;
  final Image logo;
  final String description;

  final double initDelivery;
  final double finalDelivery;
  final double priceRange;
  // final Image image;
//  final Image logo;
  final String restaurant;
  final int time;
  final double price;
  final String classification1;
  final String classification2;
  final String classification3;
  final String classification4;
  final String classification5;
  final String classification6;
  final int cant1;
  final int cant2;
  final int cant3;
  final int cant4;
  final int cant5;
  final int cant6;
  final Image rebajaImage;
  final String rebajaDescription;
  final double rebajaTime;
  final String descriptionInfo;
  final String workingDays;
  final String workingHours;
  final String address;
  final List<CatalogItem> products;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;

    return Padding(
      padding: EdgeInsets.only(
        bottom: screenHeight * 1,
        //right: 8,
        left: 8.0,
      ),
      child: SizedBox(
        height: screenWidth * 75,
        width: screenWidth * 85,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Card(
              color: Colors.green,
              clipBehavior: Clip.antiAlias,
              elevation: 0.5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              child: InkWell(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        alignment: Alignment.topLeft,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: screenHeight * 1,
                                    left: screenWidth * 3.2,
                                    top: screenWidth * 3.2),
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  child: Container(
                                      child: logo,
                                      height: screenWidth * 15,
                                      width: screenWidth * 16),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('$restaurant',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white)),
                                    Text('From $price cuc',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Expanded(
                        child: ZigZag(
                            clipType: ClipType.traingle,
                            child: Container(
                              width: double.maxFinite,
                              height: double.maxFinite,
                              child: image,
                            )),
                      ),
                    ]),
                splashColor:
                    Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
                highlightColor: Colors.transparent,
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
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                '$description',
                maxLines: 3,
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                    backgroundColor: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum ClipType { pointed, curved, arc, traingle, waved }

class ZigZag extends StatelessWidget {
  final Widget child;
  final ClipType clipType;

  ZigZag({this.child, this.clipType = ClipType.curved});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ZigZagClipper(clipType),
      child: child,
    );
  }
}

class ZigZagClipper extends CustomClipper<Path> {
  ClipType clipType;

  ZigZagClipper(this.clipType);

  @override
  Path getClip(Size size) {
    Path path = Path();
    if (clipType == ClipType.traingle) {
      createTriangle(size, path);
    }

    path.close();
    return path;
  }

  createTriangle(Size size, Path path) {
    path.moveTo(0, size.height / 2.2);
    path.lineTo(size.width, size.height / 6.2);
    path.lineTo(size.width, size.height);
    path.lineTo(
      0,
      size.width,
    );
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
