import 'package:flutter/material.dart';
import 'package:tu_comida/pages/ProductView.dart';

class ShopItem extends StatefulWidget {
  ShopItem({
    this.image,
    this.productPrice,
    this.productName,
    this.description,
    this.theme1,
    this.theme2,
    this.theme3,
    this.only1,
    this.only2,
    this.only3,
    this.only4,
    this.optional1,
    this.optional2,
    this.optional3,
  }) : super();

  final Image image;
  final double productPrice;
  final String productName;
  final String description;
  final String theme1;
  final String theme2;
  final String theme3;
  final String only1;
  final String only2;
  final String only3;
  final String only4;
  final String optional1;
  final String optional2;
  final String optional3;
  @override
  _ShopItemState createState() => _ShopItemState(
      image: image,
      productName: productName,
      productPrice: productPrice,
      description: description,
      theme1: theme1,
      theme2: theme2,
      theme3: theme3,
      only1: only1,
      only2: only2,
      only3: only3,
      only4: only4,
      optional1: optional1,
      optional2: optional2,
      optional3: optional3);
}

class _ShopItemState extends State<ShopItem> {
  _ShopItemState({
    this.image,
    this.productPrice,
    this.productName,
    this.description,
    this.theme1,
    this.theme2,
    this.theme3,
    this.only1,
    this.only2,
    this.only3,
    this.only4,
    this.optional1,
    this.optional2,
    this.optional3,
  });
  final Image image;
  final double productPrice;
  final String productName;
  final String description;
  final String theme1;
  final String theme2;
  final String theme3;
  final String only1;
  final String only2;
  final String only3;
  final String only4;
  final String optional1;
  final String optional2;
  final String optional3;

  int cant = 0;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductView(
                      image: image,
                      description: description,
                      name: productName,
                      theme1: theme1,
                      theme2: theme2,
                      theme3: theme3,
                      only1: only1,
                      only2: only2,
                      only3: only3,
                      only4: only4,
                      optional1: optional1,
                      optional2: optional2,
                      optional3: optional3)));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 30.0, bottom: 10, top: 5),
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
                      child: image,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      //  color: Colors.red,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                left: 5,
                              ),
                              child: Text(
                                '$productName',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: screenWidth * 4),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4.0),
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.start,
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
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 9.0, right: 9),
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
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 27.0, top: 9),
                    child: Text(
                      '$productPrice cuc',
                      maxLines: 1,
                      style: TextStyle(
                          color: Colors.black45, fontSize: screenWidth * 3.8),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 34.0,
              ),
              child: Divider(
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
