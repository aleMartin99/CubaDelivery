import 'package:flutter/material.dart';
import 'package:tu_comida/pages/ProductView.dart';

class SearchProduct extends StatelessWidget {
  @override
  SearchProduct(
      {@required this.productPrice,
      this.name,
      this.image,
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
      this.cant});

  final double productPrice;
  final String name;
  final Image image;
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
  final int cant;
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;
    return Padding(
      padding: EdgeInsets.all(7),
      child: Container(
        width: screenWidth * 43,
        child: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () => Navigator.push(
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
                      optional3: optional3))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Card(
                child: image,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, top: 5),
                child: Text(
                  '$name',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                  softWrap: false,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, top: 2),
                child: Text(
                  '$productPrice cuc',
                  style: TextStyle(fontSize: 12, color: Colors.black45),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
