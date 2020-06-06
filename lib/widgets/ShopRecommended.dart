import 'package:flutter/material.dart';
import 'package:tu_comida/pages/ProductView.dart';

class ShopRecommended extends StatelessWidget {
  const ShopRecommended({
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
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;
    return Container(
      width: screenWidth*87,
      child: Card(elevation: 2,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        child: InkWell(
          child: Row(
            children: <Widget>[
              Container(width: screenWidth * 28,
                    height: screenWidth * 26,
                child: Padding(
                  padding: const EdgeInsets.only(top:2.0,left:7,right: 3,bottom: 2),
                  child: Card(elevation: 0,
                    child: image,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                ),
              ),
              Expanded(
                              child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top:18.0,right:8,left: 0 ),
                      child: Text(
                        '$productName',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black87, fontSize: screenWidth * 4.3),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:14.0,bottom: 12,right:8),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(width: screenWidth*30,
                            child: Card(
                                color: Colors.green,
                                clipBehavior: Clip.antiAlias,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: InkWell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        'Add',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: screenWidth * 4.3),
                                      ),
                                    ),
                                  ),
                                  // Metodo para añadir al carro de compras
                                  onTap: null,
                                )),
                          ),

                              Padding(
                                padding: const EdgeInsets.only(left:8.0,right: 8),
                                child: Text('$productPrice cuc',style: TextStyle(
                                          color: Colors.black45, fontSize: screenWidth * 4),),
                              )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
        ),
      ),
    );
  }
}
